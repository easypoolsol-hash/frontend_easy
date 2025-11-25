/// Google Way: Comprehensive provider tests for students feature
///
/// Tests follow Google's testing principles:
/// - Fast, isolated unit tests
/// - Mock external dependencies
/// - Test all edge cases including null handling
/// - Test error states and graceful degradation
library;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:frontend_easy/data/repositories/student_repository.dart';
import 'package:frontend_easy/features/school/providers/students_provider.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

// Mocks
class MockStudentRepository extends Mock implements StudentRepository {}

void main() {
  late MockStudentRepository mockRepository;
  late ProviderContainer container;

  setUp(() {
    mockRepository = MockStudentRepository();
    container = ProviderContainer(
      overrides: [
        studentRepositoryProvider.overrideWithValue(mockRepository),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('StudentsListProvider', () {
    test('loads students successfully', () async {
      // Arrange
      final mockStudents = _createMockStudentList(count: 5);
      when(() => mockRepository.getStudents(page: 1))
          .thenAnswer((_) async => mockStudents);

      // Act
      final result = await container.read(
        studentsListProvider(const StudentListParams(page: 1)).future,
      );

      // Assert
      expect(result.results.length, 5);
      verify(() => mockRepository.getStudents(page: 1)).called(1);
    });

    test('handles empty results gracefully', () async {
      // Arrange
      final emptyList = _createMockStudentList(count: 0);
      when(() => mockRepository.getStudents(page: 1))
          .thenAnswer((_) async => emptyList);

      // Act
      final result = await container.read(
        studentsListProvider(const StudentListParams(page: 1)).future,
      );

      // Assert
      expect(result.results, isEmpty);
    });

    test('handles API error gracefully', () async {
      // Arrange
      when(() => mockRepository.getStudents(page: 1))
          .thenThrow(Exception('Network error'));

      // Act & Assert
      expect(
        () => container.read(
          studentsListProvider(const StudentListParams(page: 1)).future,
        ),
        throwsException,
      );
    });

    test('caches results for same parameters', () async {
      // Arrange
      final mockStudents = _createMockStudentList(count: 3);
      when(() => mockRepository.getStudents(page: 1))
          .thenAnswer((_) async => mockStudents);

      // Act - call twice
      await container.read(
        studentsListProvider(const StudentListParams(page: 1)).future,
      );
      await container.read(
        studentsListProvider(const StudentListParams(page: 1)).future,
      );

      // Assert - repository called only once due to caching
      verify(() => mockRepository.getStudents(page: 1)).called(1);
    });
  });

  group('Student Model Null Handling', () {
    test('student without bus details handles null gracefully', () {
      // Arrange - Student with null assignedBus
      final student = _createMockStudent(
        hasAssignedBus: false,
        hasBusDetails: false,
      );

      // Act & Assert - accessing should not throw
      expect(student.assignedBus, isNull);
      // busDetails might have default values, shouldn't crash
      expect(() => student.busDetails, returnsNormally);
    });

    test('student without school details handles null gracefully', () {
      // Arrange
      final student = _createMockStudent(hasSchoolDetails: false);

      // Act & Assert
      expect(() => student.schoolDetails, returnsNormally);
    });

    test('student with all relations populated', () {
      // Arrange
      final student = _createMockStudent(
        hasAssignedBus: true,
        hasBusDetails: true,
        hasSchoolDetails: true,
        hasParents: true,
        hasPhotos: true,
      );

      // Assert
      expect(student.assignedBus, isNotNull);
      expect(student.schoolDetails, isNotNull);
      expect(student.parents, isNotEmpty);
      expect(student.photos, isNotEmpty);
    });
  });

  group('Pagination', () {
    test('loads next page correctly', () async {
      // Arrange
      final page1 = _createMockStudentList(count: 10, hasNext: true);
      final page2 = _createMockStudentList(count: 10, hasNext: false);

      when(() => mockRepository.getStudents(page: 1))
          .thenAnswer((_) async => page1);
      when(() => mockRepository.getStudents(page: 2))
          .thenAnswer((_) async => page2);

      // Act
      final result1 = await container.read(
        studentsListProvider(const StudentListParams(page: 1)).future,
      );
      final result2 = await container.read(
        studentsListProvider(const StudentListParams(page: 2)).future,
      );

      // Assert
      expect(result1.next, isNotNull);
      expect(result2.next, isNull);
    });
  });

  group('Search', () {
    test('searches students by query', () async {
      // Arrange
      final searchResults = _createMockStudentList(count: 2);
      when(() => mockRepository.getStudents(page: 1, search: 'John'))
          .thenAnswer((_) async => searchResults);

      // Act
      final result = await container.read(
        studentsListProvider(
          const StudentListParams(page: 1, search: 'John'),
        ).future,
      );

      // Assert
      expect(result.results.length, 2);
      verify(() => mockRepository.getStudents(page: 1, search: 'John'))
          .called(1);
    });
  });
}

// Helper functions to create mock data
PaginatedStudentList _createMockStudentList({
  int count = 5,
  bool hasNext = false,
}) {
  final students = List.generate(
    count,
    (i) => _createMockStudent(index: i),
  );

  return PaginatedStudentList((b) => b
    ..count = count
    ..next = hasNext ? 'http://api/students?page=2' : null
    ..previous = null
    ..results.addAll(students));
}

Student _createMockStudent({
  int index = 0,
  bool hasAssignedBus = false,
  bool hasBusDetails = false,
  bool hasSchoolDetails = true,
  bool hasParents = false,
  bool hasPhotos = false,
}) {
  return Student((b) => b
    ..studentId = 'student-$index'
    ..school = 'school-1'
    ..schoolStudentId = 'STU-2024-00$index'
    ..decryptedName = 'Student $index'
    ..grade = '${(index % 12) + 1}'
    ..section = 'A'
    ..status = StudentStatusEnum.active
    ..enrollmentDate = Date(2024, 1, 15)
    ..createdAt = DateTime.now()
    ..updatedAt = DateTime.now()
    ..assignedBus = hasAssignedBus ? 'bus-1' : null
    ..busDetails = hasBusDetails
        ? (BusBasicBuilder()
              ..busId = 'bus-1'
              ..licensePlate = 'KA-01-1234'
              ..busNumber = 'Bus 1'
              ..capacity = 40
              ..status = BusBasicStatusEnum.active
              ..createdAt = DateTime.now()
              ..updatedAt = DateTime.now())
            .build()
        : (BusBasicBuilder()
              ..busId = ''
              ..licensePlate = ''
              ..busNumber = ''
              ..capacity = 0
              ..status = BusBasicStatusEnum.active
              ..createdAt = DateTime.now()
              ..updatedAt = DateTime.now())
            .build()
    ..schoolDetails = hasSchoolDetails
        ? (SchoolBuilder()
              ..schoolId = 'school-1'
              ..name = 'Test School'
              ..createdAt = DateTime.now())
            .build()
        : (SchoolBuilder()
              ..schoolId = ''
              ..name = ''
              ..createdAt = DateTime.now())
            .build()
    ..parents = ListBuilder(hasParents ? [_createMockParent()] : [])
    ..photos = ListBuilder(hasPhotos ? [_createMockPhoto()] : []));
}

StudentParent _createMockParent() {
  return StudentParent((b) => b
    ..student = 'student-1'
    ..parent = 'parent-1'
    ..relationship = 'Father'
    ..isPrimary = true);
}

StudentPhoto _createMockPhoto() {
  return StudentPhoto((b) => b
    ..photoId = 'photo-1'
    ..student = 'student-1'
    ..photoUrl = 'https://example.com/photo.jpg'
    ..photoContentType = 'image/jpeg'
    ..isPrimary = true
    ..capturedAt = DateTime.now()
    ..createdAt = DateTime.now());
}
