import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/scan_screen.dart';
import 'screens/report_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/home':
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case '/scan':
      return MaterialPageRoute(builder: (_) => const ScanScreen());
    case '/report':
      return MaterialPageRoute(builder: (_) => const ReportScreen());
    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text("Page not found"))),
      );
  }
}
