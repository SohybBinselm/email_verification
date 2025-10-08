import 'package:flutter/material.dart';

import 'email_verification_screen.dart';

class DashboardScreen extends StatelessWidget {
  final String email;

  const DashboardScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Logo at the top
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                  width: 100,
                ),
              ),

              // Welcome text
              Text(
                'مرحبا بكم في الموقع الرسمي لمحافظة الدقهلية',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              // Wait text
              const Text(
                'انتظرونا',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),

              const Spacer(),

              // Logout button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate back to the email verification screen
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EmailVerificationScreen(),
                      ),
                      (route) => false, // Remove all previous routes
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text('Logout'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
