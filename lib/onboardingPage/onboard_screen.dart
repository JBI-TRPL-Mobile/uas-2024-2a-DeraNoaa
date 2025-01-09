import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/onboardingPage/onboarding_provider.dart';

import '../signinupPage/signin_screen.dart';
import '../signinupPage/signup_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OnboardingProvider>(context);

    return Scaffold(
      body: FutureBuilder(future: provider.loadData(), builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.grey[300],
                child: const Icon(
                  Icons.image,
                  size: 100,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),

              Text(
                provider.message,
                textAlign: TextAlign.center,
                style : const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton (
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignInScreen()),
                      ); //navigasi ke halaman sign in
                    },
                    child: const Text("Sign In"),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    ); //navigasi ke halaman sign up
                      }, 
                      child: const Text("Sign Up"),
                      )
                ],
              )
            ],
          ),
        );
      })
    );
  }
}