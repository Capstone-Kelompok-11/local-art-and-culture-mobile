import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/home%20page/src/screen_home_page.dart';

import 'register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleComponent(),
                const SizedBox(height: 40),
                FieldComponent(
                  isPasswordVisible: _isPasswordVisible,
                  togglePasswordVisibility: (bool isVisible) {
                    setState(() {
                      _isPasswordVisible = isVisible;
                    });
                  },
                ),
                const SizedBox(height: 20),
                ThirdComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selamat Datang Kembali!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Plus Jakarta Sans',
            ),
          ),
          Text('Silakan Masuk ke Akun Anda.',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'Plus Jakarta Sans')),
        ],
      ),
    );
  }
}

class FieldComponent extends StatelessWidget {
  final bool isPasswordVisible;
  final Function(bool) togglePasswordVisibility;

  const FieldComponent({
    required this.isPasswordVisible,
    required this.togglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 5, left: 8),
            child: const Text('Email',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color.fromRGBO(102, 102, 102, 1))),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Masukkan Email',
              filled: true,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: 'Plus Jakarta Sans',
              ),
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 5, left: 8),
            child: const Text(
              'Kata Sandi',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(102, 102, 102, 1),
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ),
          TextField(
            obscureText: !isPasswordVisible,
            decoration: InputDecoration(
              hintText: 'Masukkan Kata Sandi',
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: 'Plus Jakarta Sans',
              ),
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  togglePasswordVisibility(!isPasswordVisible);
                },
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigate to forgot password page
            },
            child: const Text(
              'Lupa Kata Sandi?',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 12,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdComponent extends StatefulWidget {
  @override
  _ThirdComponentState createState() => _ThirdComponentState();
}

class _ThirdComponentState extends State<ThirdComponent> {
  bool _radioValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 40, right: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _radioValue = !_radioValue;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: _radioValue
                      ? const Icon(
                          Icons.radio_button_checked,
                          size: 20,
                          color: Color.fromRGBO(54, 83, 176, 1),
                        )
                      : const Icon(
                          Icons.radio_button_unchecked,
                          size: 20,
                          color: Colors.grey,
                        ),
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Biarkan saya tetap masuk',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: const Color.fromRGBO(54, 83, 176, 1),
            ),
            onPressed: () {
              // Ini adalah bagian yang akan dijalankan saat tombol ditekan
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
            child: Container(
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Belum punya akun?',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: const Text(
                  'Daftar disini',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: const Text(
                          'Atau Masuk Dengan',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset('assets/google_logo.png', height: 40),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
