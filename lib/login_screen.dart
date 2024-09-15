// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'api_service.dart';
import 'token_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final ApiService _apiService = ApiService();
  final TokenService _tokenService = TokenService();

  void _login() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    // Attempt login via API
    final response = await _apiService.loginUser(username, password);

    // Handle success response
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final token = body['token'];
      final userType = body['user_type'];

      // Save token
      await _tokenService.saveToken(token);

      // Navigate based on user type
      if (userType == 'Student') {
        Navigator.pushReplacementNamed(context, '/student_dashboard');
      } else if (userType == 'Faculty') {
        Navigator.pushReplacementNamed(context, '/faculty_dashboard');
      } else if (userType == 'Admin') {
        Navigator.pushReplacementNamed(context, '/admin_dashboard');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Unknown user type")),
        );
      }
    } else {
      // Handle login failure
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login Failed")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.yellow[700],
      ),
      body: Container(
        color: Colors.yellow[100],
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800],
                    minimumSize: const Size(200, 50),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
