import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_nav_bar.dart';

/// PatientWrapper is a screen that serves as a container for patient-related content.
/// It includes bottom navigation functionality to navigate between different sections
/// of the patient interface.
@RoutePage(name: 'PatientWrapperRoute')
class PatientWrapper extends StatefulWidget {
  const PatientWrapper({super.key});

  @override
  State<PatientWrapper> createState() => _PatientWrapperState();
}

class _PatientWrapperState extends State<PatientWrapper> {
  int _currentIndex = 0;

  void _onNavIndexChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Patient Wrapper'),
      ),
      bottomNavigationBar: PatientNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavIndexChanged,
      ),
    );
  }
}
