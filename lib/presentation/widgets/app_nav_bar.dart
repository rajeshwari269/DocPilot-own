import 'package:flutter/material.dart';

class DoctorNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const DoctorNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.people),
          label: 'Patients',
        ),
        NavigationDestination(
          icon: Icon(Icons.dashboard),
          label: 'Dashboard',
        ),
        NavigationDestination(
          icon: Icon(Icons.calendar_today),
          label: 'Calendar',
        ),
        NavigationDestination(
          icon: Icon(Icons.medical_services),
          label: 'Prescribe',
        ),
      ],
    );
  }
}

class PatientNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const PatientNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.dashboard),
          label: 'Dashboard',
        ),
        NavigationDestination(
          icon: Icon(Icons.calendar_today),
          label: 'Schedule',
        ),
        NavigationDestination(
          icon: Icon(Icons.medical_services),
          label: 'Prescriptions',
        ),
      ],
    );
  }
}