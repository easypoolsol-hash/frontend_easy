import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/providers/students_provider.dart';
import 'package:frontend_easy/shared/utils/error_handler.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

/// Students List Screen - Google-style with pagination
/// Shows all registered students with lazy loading
class StudentsListScreen extends ConsumerStatefulWidget {
  const StudentsListScreen({super.key});

  @override
  ConsumerState<StudentsListScreen> createState() => _StudentsListScreenState();
}

class _StudentsListScreenState extends ConsumerState<StudentsListScreen> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();

  String _searchQuery = '';
  int _currentPage = 1;
  bool _isLoadingMore = false;
  List<StudentActivity> _allStudents = [];
  int _totalCount = 0;
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isLoadingMore || !_hasMore) return;

    // Load more when scrolled to 80% of the list
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (currentScroll >= maxScroll * 0.8) {
      _loadNextPage();
    }
  }

  Future<void> _loadNextPage() async {
    if (_isLoadingMore || !_hasMore) return;

    setState(() {
      _isLoadingMore = true;
    });

    try {
      final nextPage = _currentPage + 1;
      final result = await ref.read(
        studentsListProvider(StudentListParams(
          page: nextPage,
          search: _searchQuery.isEmpty ? null : _searchQuery,
        )).future,
      );

      setState(() {
        _allStudents.addAll(result.results);
        _currentPage = nextPage;
        _hasMore = result.next != null;
        _isLoadingMore = false;
      });
    } catch (e) {
      setState(() {
        _isLoadingMore = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load more: ${e.toString()}')),
        );
      }
    }
  }

  void _onSearchChanged(String value) {
    setState(() {
      _searchQuery = value;
      _currentPage = 1;
      _allStudents = [];
      _hasMore = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Watch first page
    final firstPageAsync = ref.watch(
      studentsListProvider(StudentListParams(
        page: 1,
        search: _searchQuery.isEmpty ? null : _searchQuery,
      )),
    );

    return Scaffold(
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 2),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  const Text(
                    'Students Activity Today',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Students who boarded buses today',
                    style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  ),
                  const SizedBox(height: 24),

                  // Note: Search disabled - dashboard API shows today's boarders only
                  const SizedBox(height: 8),

                  // Students List
                  Expanded(
                    child: firstPageAsync.when(
                      data: (paginatedList) {
                        // Initialize on first load
                        if (_allStudents.isEmpty && _currentPage == 1) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            if (mounted) {
                              setState(() {
                                _allStudents = paginatedList.results.toList();
                                _totalCount = paginatedList.count;
                                _hasMore = paginatedList.next != null;
                              });
                            }
                          });
                        }

                        if (_allStudents.isEmpty) {
                          return _buildEmptyState();
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Results count
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Row(
                                children: [
                                  Text(
                                    'Showing ${_allStudents.length} of $_totalCount students',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    icon: const Icon(Icons.refresh),
                                    onPressed: () {
                                      setState(() {
                                        _currentPage = 1;
                                        _allStudents = [];
                                        _hasMore = true;
                                      });
                                      ref.invalidate(studentsListProvider);
                                    },
                                    tooltip: 'Refresh',
                                  ),
                                ],
                              ),
                            ),

                            // Students table with scroll
                            Expanded(
                              child: Card(
                                child: SingleChildScrollView(
                                  controller: _scrollController,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: DataTable(
                                      columns: const [
                                        DataColumn(
                                          label: Text(
                                            'Student ID',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Name',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Grade',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Assigned Bus',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        DataColumn(
                                          label: Text(
                                            'Events Today',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                      rows: [
                                        ..._allStudents.map(_buildStudentRow),
                                        if (_isLoadingMore)
                                          DataRow(
                                            cells: [
                                              const DataCell(SizedBox()),
                                              const DataCell(SizedBox()),
                                              DataCell(
                                                Center(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(16),
                                                    child: CircularProgressIndicator(),
                                                  ),
                                                ),
                                              ),
                                              const DataCell(SizedBox()),
                                              const DataCell(SizedBox()),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: (error, stack) => _buildErrorState(error),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _buildStudentRow(StudentActivity student) {
    final hasAssignedBus = student.busNumber != null && student.busNumber!.isNotEmpty;

    return DataRow(
      cells: [
        DataCell(Text(student.schoolStudentId)),
        DataCell(
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: Colors.blue,
                child: Text(
                  student.studentName.isNotEmpty
                      ? student.studentName[0].toUpperCase()
                      : '?',
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(width: 8),
              Text(student.studentName),
            ],
          ),
        ),
        DataCell(Text(student.grade)),
        DataCell(
          hasAssignedBus
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    student.busNumber!,
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : const Text('Not Assigned'),
        ),
        DataCell(
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '${student.eventCount} EVENTS',
              style: TextStyle(
                color: Colors.green.shade900,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Card(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.inbox, size: 64, color: Colors.grey),
              const SizedBox(height: 16),
              Text(
                _searchQuery.isEmpty
                    ? 'No students registered yet'
                    : 'No students found matching "$_searchQuery"',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildErrorState(dynamic error) {
    // Print error to console for debugging
    print('Students List Error: $error');

    return Card(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.cloud_off_outlined,
                  size: 48, color: Colors.grey),
              const SizedBox(height: 12),
              const Text(
                'Unable to load students',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                ErrorHandler.getUserFriendlyMessage(error),
                style: const TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              // Show detailed error in debug mode
              Text(
                'Error: ${error.toString()}',
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _currentPage = 1;
                    _allStudents = [];
                    _hasMore = true;
                  });
                  ref.invalidate(studentsListProvider);
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Try Again'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
