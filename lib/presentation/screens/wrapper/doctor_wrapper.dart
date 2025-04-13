import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_nav_bar.dart';
import '../home/calendar_screen.dart';
import '../home/dashboard_screen.dart';
import '../home/patients_screen.dart';
import '../home/prescribe_screen.dart';

/// DoctorWrapper is a screen that serves as a container for doctor-related content.
/// It provides navigation between different sections using a bottom navigation bar.
/// The screen uses an IndexedStack to maintain the state of each tab when switching between them.
@RoutePage(name: 'DoctorWrapperRoute')
class DoctorWrapper extends StatefulWidget {
  const DoctorWrapper({super.key});

  @override
  State<DoctorWrapper> createState() => _DoctorWrapperState();
}

class _DoctorWrapperState extends State<DoctorWrapper> {
  int _currentIndex = 0;

  void _onNavIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const PatientsScreen(),
          const DashboardScreen(),
          const CalendarScreen(),
          const PrescribeScreen(),
        ],
      ),
      bottomNavigationBar: DoctorNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavIndexChanged,
      ),
    );
  }
}
