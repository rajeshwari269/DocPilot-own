import 'package:auto_route/auto_route.dart';

import '../../presentation/screens/home/calendar_screen.dart';
import '../../presentation/screens/home/dashboard_screen.dart';
import '../../presentation/screens/home/patients_screen.dart';
import '../../presentation/screens/home/prescribe_screen.dart';
import '../../presentation/screens/wrapper/doctor_wrapper.dart';
import '../../presentation/screens/wrapper/patient_wrapper.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: DoctorWrapperRoute.page,
      initial: true,
      children: [
        AutoRoute(page: PatientsRoute.page, path: 'patients'),
        AutoRoute(page: DashboardRoute.page, path: 'dashboard'),
        AutoRoute(page: CalendarRoute.page, path: 'calendar'),
        AutoRoute(page: PrescribeRoute.page, path: 'prescribe'),
      ],
    ),
    AutoRoute(
      page: PatientWrapperRoute.page,
    ),
  ];
}