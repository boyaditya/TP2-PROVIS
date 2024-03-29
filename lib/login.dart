// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ));

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(38.0, 30.0, 38.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Image(
                image: AssetImage('assets/athena_bg1.png'),
                width: 150,
                height: 150,
              ),
            ),
            const Center(
              child: Text(
                'Masuk',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Alamat Email',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Alamat Email',
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Kata Sandi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Kata Sandi',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
              ),
            ),
            const SizedBox(height: 80.0),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  fixedSize: Size(MediaQuery.of(context).size.width,
                      40), // 50% of screen width
                ),
                child:
                    const Text('Masuk', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 15.0),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('Lupa Kata Sandi?',
                    style: TextStyle(color: Colors.blue)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
