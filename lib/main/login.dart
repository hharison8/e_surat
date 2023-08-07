import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 100),
              Center(
                child: Image.asset(
                  'assets/logo-app.png',
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 8,),
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                ),
              ),
              const SizedBox(height: 8,),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                onPressed: () {
                  String username = _usernameController.text;
                  String password = _passwordController.text;
                  // Lakukan autentikasi atau validasi data login di sini
                  print('Email: $username');
                  print('Password: $password');
                  Navigator.pushNamed(context, '/about');
                },
                child: const Text('Sign In'),
              ),
              const SizedBox(height:8),
                const Text('Didukung oleh:',),
              const SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Aksi saat logo pertama ditekan
                      print('web-bsre');
                    },
                    child: Image.asset(
                      'assets/logo-bsre.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ],
              ),
              const SizedBox(height:2),
                const Text('© 2023 Tim SPBE Kabupaten Gianyar',),
            ],
          ),
        ),
      ),
    );
  }
}
