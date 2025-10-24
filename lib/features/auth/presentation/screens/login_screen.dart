import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:dio/dio.dart';

import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:frontend_easy/shared/services/auth_service.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  Future<void> _checkIfLoggedIn() async {
    final isAuth = await AuthService().isAuthenticated();
    if (isAuth) {
      // Already logged in, go to home
      if (mounted) {
        context.go('/');
      }
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final apiService = ApiService();

      // Workaround: Send raw JSON to avoid including readOnly fields
      // TODO: Regenerate API client with proper optional handling
      final response = await apiService.client.dio.post<Map<String, dynamic>>(
        '/api/v1/auth/token/',
        data: {
          'username': _usernameController.text,
          'password': _passwordController.text,
          // Don't send access/refresh - they're readOnly response fields
        },
      );

      if (response.statusCode == 200 && response.data != null) {
        final accessToken = response.data!['access'];
        final refreshToken = response.data!['refresh'];

        if (accessToken != null && refreshToken != null) {
          // Use AuthService to store tokens
          await AuthService().storeTokens(
            accessToken: accessToken,
            refreshToken: refreshToken,
          );

          if (mounted) {
            context.go('/');
          }
        } else {
          setState(() {
            _errorMessage = 'Invalid response: missing tokens';
          });
        }
      } else {
        setState(() {
          _errorMessage = 'Login failed: HTTP ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Login error: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            const SizedBox(height: 16),
            if (_errorMessage != null)
              Text(_errorMessage!, style: const TextStyle(color: Colors.red)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isLoading ? null : _login,
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
