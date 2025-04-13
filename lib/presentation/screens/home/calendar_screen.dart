import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// CalendarScreen displays appointments and scheduling information.
/// It allows users to view and manage their schedule and appointments.
@RoutePage()
class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      body: const Center(
        child: Text('Calendar Screen'),
      ),
    );
  }
}