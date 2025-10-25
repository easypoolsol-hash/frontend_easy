// 🚨 MOCK DATA - Remove before production
// TODO: Replace with actual API calls to backend

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/models/priority_level.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';
import 'package:frontend_easy/features/school/models/shared_models.dart';
import 'package:frontend_easy/features/school/models/student_movement_event.dart';
import 'package:frontend_easy/features/school/models/student_movement_summary.dart' as stats;
import 'package:frontend_easy/features/school/models/student_movement_summary_individual.dart';
import 'package:frontend_easy/features/school/models/student_status.dart';

/// 🚨 MOCK PROVIDER - Dashboard summary statistics
/// TODO: Replace with actual API provider
final schoolDashboardSummaryProvider = Provider<SchoolDashboardSummary>((ref) {
  return _generateMockDashboardSummary();
});

/// 🚨 MOCK PROVIDER - List of all students with movement data
/// TODO: Replace with actual API provider
final studentMovementListProvider = Provider<List<StudentMovementSummary>>((ref) {
  return _generateMockStudentList();
});

/// 🚨 MOCK PROVIDER - Filtered students by status
/// TODO: Replace with actual API provider
final studentsByStatusProvider = Provider.family<List<StudentMovementSummary>, StudentStatus?>((ref, status) {
  final allStudents = ref.watch(studentMovementListProvider);

  if (status == null) return allStudents;

  return allStudents.where((s) => s.status.status == status.status).toList();
});

/// 🚨 MOCK PROVIDER - Students requiring attention (sorted by priority)
/// TODO: Replace with actual API provider
final attentionStudentsProvider = Provider<List<StudentMovementSummary>>((ref) {
  final allStudents = ref.watch(studentMovementListProvider);

  return allStudents
      .where((s) => s.status.status == StudentStatuses.attentionRequired.status)
      .toList()
    ..sort((a, b) => b.priority.sortOrder.compareTo(a.priority.sortOrder));
});

// ============================================================================
// 🚨 MOCK DATA GENERATORS - Remove all functions below before production
// ============================================================================

SchoolDashboardSummary _generateMockDashboardSummary() {
  return SchoolDashboardSummary(
    alertCount: 12,
    alerts: const AlertBreakdown(
      high: 5,
      medium: 7,
    ),
    buses: const BusStats(
      total: 100,
      arrived: 87,
      enRoute: 13,
      delayed: 2,
      inactive: 0,
    ),
    students: const StudentStats(
      total: 4000,
      departed: 3456,
      onCampus: 231,
      attention: 12,
      absent: 109,
      inTransit: 192,
    ),
    gradeStats: {
      'Grade 1-2': const GradeStats(gradeName: 'Grade 1-2', total: 800, arrived: 784),
      'Grade 3-5': const GradeStats(gradeName: 'Grade 3-5', total: 1200, arrived: 1140),
      'Grade 6-8': const GradeStats(gradeName: 'Grade 6-8', total: 1200, arrived: 1056),
      'Grade 9-12': const GradeStats(gradeName: 'Grade 9-12', total: 800, arrived: 656),
    },
    lastUpdated: DateTime.now().subtract(const Duration(seconds: 15)),
  );
}

List<StudentMovementSummary> _generateMockStudentList() {
  final now = DateTime.now();

  return [
    // 🔴 HIGH PRIORITY STUDENTS
    StudentMovementSummary(
      studentId: '5A-023',
      studentName: 'Raj Kumar',
      rollNumber: '5A-023',
      grade: '5A',
      busRoute: 'Route #12',
      status: StudentStatuses.attentionRequired,
      priority: PriorityLevels.high,
      alertMessage: 'Still on campus 1hr 15min after expected departure',
      lastEventTime: now.subtract(const Duration(hours: 1, minutes: 15)),
      primaryParent: const ParentContact(
        name: 'Mr. Kumar',
        phoneNumber: '+91-98765-43210',
        relationship: 'Father',
      ),
      events: [
        StudentMovementEvent(
          eventId: 'event-001',
          studentId: '5A-023',
          studentName: 'Raj Kumar',
          grade: '5A',
          eventType: StudentEventType.boarding,
          timestamp: now.subtract(const Duration(hours: 7, minutes: 15)),
          location: 'Stop #3, Kalyan Nagar',
          confidence: 0.95,
        ),
        StudentMovementEvent(
          eventId: 'event-002',
          studentId: '5A-023',
          studentName: 'Raj Kumar',
          grade: '5A',
          eventType: StudentEventType.arrival,
          timestamp: now.subtract(const Duration(hours: 6, minutes: 30)),
          location: 'Main Gate',
          confidence: 0.92,
        ),
        StudentMovementEvent(
          eventId: 'event-003',
          studentId: '5A-023',
          studentName: 'Raj Kumar',
          grade: '5A',
          eventType: StudentEventType.attention_required,
          timestamp: now.subtract(const Duration(hours: 1, minutes: 30)),
          location: 'Afternoon Pickup',
          confidence: null,
        ),
      ],
    ),

    StudentMovementSummary(
      studentId: '3B-089',
      studentName: 'Priya Singh',
      rollNumber: '3B-089',
      grade: '3B',
      busRoute: 'Route #8',
      status: StudentStatuses.attentionRequired,
      priority: PriorityLevels.high,
      alertMessage: 'No morning scan - marked present by teacher but no bus record',
      lastEventTime: null,
      primaryParent: const ParentContact(
        name: 'Mrs. Singh',
        phoneNumber: '+91-98765-55555',
        relationship: 'Mother',
      ),
      events: [
        StudentMovementEvent(
          eventId: 'event-004',
          studentId: '3B-089',
          studentName: 'Priya Singh',
          grade: '3B',
          eventType: StudentEventType.attention_required,
          timestamp: now.subtract(const Duration(hours: 7)),
          location: 'Route #8 Stop',
          confidence: null,
        ),
      ],
    ),

    // 🟡 MEDIUM PRIORITY STUDENTS
    StudentMovementSummary(
      studentId: '7A-145',
      studentName: 'Arjun Patel',
      rollNumber: '7A-145',
      grade: '7A',
      busRoute: 'Route #15',
      status: StudentStatus.attentionRequired,
      priority: PriorityLevel.medium,
      alertMessage: 'Waiting for afternoon bus - normal delay',
      lastEventTime: now.subtract(const Duration(minutes: 35)),
      primaryParent: const ParentContact(
        name: 'Mr. Patel',
        phoneNumber: '+91-98765-11111',
        relationship: 'Father',
      ),
      events: [
        StudentMovementEvent(
          eventType: MovementEventType.boarded,
          timestamp: now.subtract(const Duration(hours: 6, minutes: 45)),
          location: const EventLocation(type: LocationType.busStop, name: 'Whitefield Stop'),
          verificationMethod: VerificationMethod.rfid,
          verified: true,
          busRoute: 'Route #15',
        ),
        StudentMovementEvent(
          eventType: MovementEventType.alighted,
          timestamp: now.subtract(const Duration(hours: 6)),
          location: const EventLocation(type: LocationType.schoolGate, name: 'East Gate'),
          verificationMethod: VerificationMethod.faceScan,
          verified: true,
        ),
        StudentMovementEvent(
          eventType: MovementEventType.expected,
          timestamp: now.add(const Duration(minutes: 10)),
          location: const EventLocation(type: LocationType.schoolGate, name: 'Afternoon Pickup'),
          verificationMethod: VerificationMethod.faceScan,
          verified: false,
          busRoute: 'Route #15',
          notes: 'Bus arriving in 10 minutes',
        ),
      ],
    ),

    // 🟢 NORMAL - DEPARTED STUDENTS
    StudentMovementSummary(
      studentId: '4C-056',
      studentName: 'Ananya Sharma',
      rollNumber: '4C-056',
      grade: '4C',
      busRoute: 'Route #5',
      status: StudentStatus.departed,
      priority: PriorityLevel.normal,
      lastEventTime: now.subtract(const Duration(minutes: 45)),
      primaryParent: const ParentContact(
        name: 'Mrs. Sharma',
        phoneNumber: '+91-98765-22222',
        relationship: 'Mother',
      ),
      events: [
        StudentMovementEvent(
          eventType: MovementEventType.boarded,
          timestamp: now.subtract(const Duration(hours: 7)),
          location: const EventLocation(type: LocationType.busStop, name: 'Indiranagar Stop'),
          verificationMethod: VerificationMethod.faceScan,
          verified: true,
          busRoute: 'Route #5',
        ),
        StudentMovementEvent(
          eventType: MovementEventType.alighted,
          timestamp: now.subtract(const Duration(hours: 6, minutes: 15)),
          location: const EventLocation(type: LocationType.schoolGate, name: 'Main Gate'),
          verificationMethod: VerificationMethod.faceScan,
          verified: true,
        ),
        StudentMovementEvent(
          eventType: MovementEventType.boarded,
          timestamp: now.subtract(const Duration(hours: 1)),
          location: const EventLocation(type: LocationType.schoolGate, name: 'Afternoon Pickup'),
          verificationMethod: VerificationMethod.faceScan,
          verified: true,
          busRoute: 'Route #5',
        ),
        StudentMovementEvent(
          eventType: MovementEventType.alighted,
          timestamp: now.subtract(const Duration(minutes: 45)),
          location: const EventLocation(type: LocationType.busStop, name: 'Indiranagar Stop'),
          verificationMethod: VerificationMethod.faceScan,
          verified: true,
        ),
      ],
    ),

    // ON CAMPUS - Normal during school hours
    StudentMovementSummary(
      studentId: '6B-078',
      studentName: 'Karthik Reddy',
      rollNumber: '6B-078',
      grade: '6B',
      busRoute: 'Route #22',
      status: StudentStatus.onCampus,
      priority: PriorityLevel.normal,
      lastEventTime: now.subtract(const Duration(hours: 5, minutes: 30)),
      primaryParent: const ParentContact(
        name: 'Mr. Reddy',
        phoneNumber: '+91-98765-33333',
        relationship: 'Father',
      ),
      events: [
        StudentMovementEvent(
          eventType: MovementEventType.boarded,
          timestamp: now.subtract(const Duration(hours: 6)),
          location: const EventLocation(type: LocationType.busStop, name: 'HSR Layout Stop'),
          verificationMethod: VerificationMethod.faceScan,
          verified: true,
          busRoute: 'Route #22',
        ),
        StudentMovementEvent(
          eventType: MovementEventType.alighted,
          timestamp: now.subtract(const Duration(hours: 5, minutes: 30)),
          location: const EventLocation(type: LocationType.schoolGate, name: 'Main Gate'),
          verificationMethod: VerificationMethod.faceScan,
          verified: true,
        ),
      ],
    ),

    // ABSENT
    const StudentMovementSummary(
      studentId: '8A-112',
      studentName: 'Sneha Gupta',
      rollNumber: '8A-112',
      grade: '8A',
      busRoute: 'Route #7',
      status: StudentStatus.absent,
      priority: PriorityLevel.normal,
      lastEventTime: null,
      primaryParent: ParentContact(
        name: 'Mrs. Gupta',
        phoneNumber: '+91-98765-44444',
        relationship: 'Mother',
      ),
      events: [],
    ),
  ];
}
