import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// PatientsScreen displays a list of patients for the doctor to view and manage.
/// This screen is part of the doctor's interface and is accessed via the navigation bar.
@RoutePage()
class PatientsScreen extends StatelessWidget {
  const PatientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patients'),
      ),
      body: const Center(
        child: Text('Patients Screen'),
      ),
    );
  }
}