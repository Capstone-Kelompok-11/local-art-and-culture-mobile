import 'package:flutter/material.dart';
import 'package:local_art_and_culture/models/login_model.dart';
import 'package:local_art_and_culture/service/login_service.dart';
import 'package:local_art_and_culture/src/feature/home%20page/src/screen_home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                const SizedBox(height: 20),
                ThirdComponent(
                  emailController: emailController,
                  passwordController: passwordController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleComponent extends StatelessWidget {
  const TitleComponent({super.key});

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
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const FieldComponent({
    super.key,
    required this.isPasswordVisible,
    required this.togglePasswordVisibility,
    required this.emailController,
    required this.passwordController,
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
            controller: emailController,
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
            controller: passwordController,
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
            onPressed: () {},
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
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const ThirdComponent({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ThirdComponentState createState() => _ThirdComponentState();
}

class _ThirdComponentState extends State<ThirdComponent> {
  bool _radioValue = false;
  bool _isLoading = false;

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
              onPressed: _isLoading ? null : () => Login(),
              child: _isLoading
                  ? const CircularProgressIndicator(
                      color: Color.fromRGBO(54, 83, 176, 1))
                  : const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Masuk',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'Plus Jakarta Sans',
                          ),
                        ),
                      ),
                    )),
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
          Column(
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
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> Login() async {
    SharedPreferences masuk = await SharedPreferences.getInstance();
    setState(() {
      _isLoading = true;
      _radioValue = !_radioValue;
    });
    final signInService = SignInService();
    try {
      Map<String, dynamic> loginResult = await signInService.loginUser(
          widget.emailController.text.trim(),
          widget.passwordController.text.trim());
      if (loginResult['message'] == 'Success') {
        masuk.setString('token', loginResult['data']['users']['token']);
        masuk.setString('nama', loginResult['data']['users']['first_name']);
        masuk.setInt('id', loginResult['data']['id']);
        // ignore: use_build_context_synchronously
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MyHomePage()),
          (Route<dynamic> route) => false,
        );
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // ignore: unused_element
  Future<void> _handleLogin() async {
    setState(() {
      _isLoading = true;
      _radioValue = !_radioValue;
    });

    String email = widget.emailController.text.trim();
    String password = widget.passwordController.text.trim();

    final signInService = SignInService();
    final ModelSignIn? modelSignIn =
        await signInService.signInAccount(email, password);
    // ignore: unused_local_variable
    final response = await signInService.loginUser(
        widget.emailController.text.trim().toString(), password);
    // try {
    //   setState(() {
    //     _isLoading = true;
    //   });
    //   print(email);
    //   print(password);

    //   print(response.statusCode);
    //   final responData = json.decode(response.body);
    //   print(responData['message']);
    //   if (response.statusCode == 200) {
    //     SharedPreferences login = await SharedPreferences.getInstance();
    //     login.setString('token', responData['data']['users']['token']);
    //     login.setInt('id', responData['data']['id']);
    //     // ignore: use_build_context_synchronously
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => const MyHomePage()),
    //     );
    //   }
    // } catch (e) {
    //   print(e);
    // } finally {
    //   setState(() {
    //     _isLoading = false;
    //   });
    // }

    if (modelSignIn != null) {
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        // ignore: prefer_const_constructors
        SnackBar(
          content: const Text('Login Gagal, username atau password anda salah'),
        ),
      );
    }
  }
}
