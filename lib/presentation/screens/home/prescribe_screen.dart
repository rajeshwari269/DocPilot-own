import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// PrescribeScreen allows doctors to create and manage prescriptions for patients.
/// This screen provides functionality for writing, reviewing, and sending prescriptions.
@RoutePage()
class PrescribeScreen extends StatelessWidget {
  const PrescribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prescribe'),
      ),
      body: const Center(
        child: Text('Prescribe Screen'),
      ),
    );
  }
}