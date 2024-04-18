import 'package:flutter/material.dart';
import 'package:sample_app/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void _login(BuildContext context) {
    // Perform login logic here
    // For demo purposes, directly navigate to Home page
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Login Successful'),
        duration: Duration(seconds: 1),
      ),
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login'),
      // ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/man-with-phone.png',
                        height: 300, // Adjust height as needed
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 300, // Limit width for web view
                        child: TextField(
                          decoration: const InputDecoration(labelText: 'Email'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 300, // Limit width for web view
                        child: TextField(
                          decoration:
                              const InputDecoration(labelText: 'Password'),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          _login(context);
                        },
                        child: const Text('Login'),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Handle "Forgot Password?" action
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 96, 33, 243)),
                            ),
                          ),
                          const Text('|'),
                          TextButton(
                            onPressed: () {
                              // Handle "Sign up" action
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 96, 33, 243)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
