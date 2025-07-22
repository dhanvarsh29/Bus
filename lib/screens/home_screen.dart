import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              icon: Icons.qr_code_scanner,
              text: 'Scan Attendance',
              onTap: () {
                Navigator.pushNamed(context, '/scan');
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              icon: Icons.insert_chart_outlined,
              text: 'View Reports',
              onTap: () {
                Navigator.pushNamed(context, '/report');
              },
            ),
          ],
        ),
      ),
    );
  }
}
