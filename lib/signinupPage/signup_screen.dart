import 'package:flutter/material.dart';
import 'package:template_project/dashboard/dashboard_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title
            const Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Subtitle
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 32),

            // Name Field
             Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Name", 
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Email Field
            TextField(
              decoration: InputDecoration(
                labelText: "Full Name ... ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Email Field
             Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Enter Email", 
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Email Field
            TextField(
              decoration: InputDecoration(
                labelText: "youremail@gmail.com",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Password Field
           Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Password", // Teks yang akan ditampilkan di atas field
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
            // Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "********",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 8),

             // Password Confirm Field
            Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Confirm", // Teks yang akan ditampilkan di atas field
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
            // Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "********",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Forget Password
            Row(
  mainAxisAlignment: MainAxisAlignment.end, // Mengatur agar tombol berada di kanan
  children: [
    TextButton(
      onPressed: () {
        // Handle forget password action
      },
      child: const Text(
        "Forget Password?",
        style: TextStyle(color: Colors.blue),
      ),
    ),
  ],
),


            // Sign In Button
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DashboardScreen()),
                    );// Handle sign-up action
              },
              child: const Text("Sign Up"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
            const SizedBox(height: 16),

            // Divider for Social Login
            Row(
              children: const [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("or sign in with"),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                 Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Warna border
          width: 2.0, // Ketebalan border
        ),
        borderRadius: BorderRadius.circular(8.0), // Mengatur radius border untuk sudut melengkung
      ),
      child: IconButton(
        onPressed: () {
          // Handle Mobile Data button
        },
        icon: const Icon(Icons.g_mobiledata),
        iconSize: 36,
      ),
    ),
                const SizedBox(width: 16),

                Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Warna border
          width: 2.0, // Ketebalan border
        ),
        borderRadius: BorderRadius.circular(8.0), // Mengatur radius border untuk sudut melengkung
      ),
      child: IconButton(
        onPressed: () {
          // Handle Facebook button
        },
        icon: const Icon(Icons.facebook),
        iconSize: 36,
      ),
    ),
  ],
),
            const SizedBox(height: 32),

            // Sign Up Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    // Navigate to Sign Up screen
                  },
                  child: const Text(
                    "Sign Up Now",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
