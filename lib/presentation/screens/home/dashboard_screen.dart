import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// DashboardScreen displays an overview of important information and metrics.
/// This screen provides a summary view for both doctors and patients depending on the user role.
@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const Center(
        child: Text('Dashboard Screen'),
      ),
    );
  }
}