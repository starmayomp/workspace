import 'package:flutter/material.dart';
import 'screens/role_selection_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/client/client_signup_screen.dart';
import 'screens/client/access_policy_screen.dart';
import 'screens/client/invoices_screen.dart';
import 'screens/client/shift_notes_screen.dart';
import 'screens/client/client_dashbord.dart';
import 'screens/employee/employee_signup_screen.dart';
import 'screens/employee/employee_dashbord.dart';
import 'screens/employee/bank_detail_screen.dart';
import 'screens/employee/online_training_screen.dart';
import 'screens/employee/employee_shift_notes_screen.dart';
import 'screens/employee/policy_procedure_screen.dart';
import 'screens/employee/rosters_screen.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Memba Care App',
        debugShowCheckedModeBanner: false,
        // initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(), // initial screen
          '/role_selection': (context) => const RoleSelectionScreen(),
          '/login': (context) => const LoginScreen(),
          '/client/client_dashbord': (context) => const ClientDashboard(),
          '/client/signup': (context) => const ClientSignupScreen(),
          '/client/access_policy': (context) => const AccessPolicyScreen(),
          '/client/shift_notes': (context) => ShiftNotesScreen(),
          '/client/invoices': (context) => InvoicesScreen(),
          '/employee/signup': (context) => const EmployeeSignupScreen(),
          '/employee/employee_dashbord': (context) => const EmployeeDashbord(),
          '/employee/bank_detail': (context) => const BankDetailScreen(),
          '/employee/online_training': (context) =>
              const OnlineTrainingScreen(),
          '/employee/shift_notes': (context) =>
              const EmployeeShiftNotesScreen(),
          '/employee/policy_procedure': (context) =>
              const PolicyProcedureScreen(),
          '/employee/rosters': (context) => const RostersScreen(),
        });
  }
}
