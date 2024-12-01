import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SigInScreen extends StatefulWidget {
  SigInScreen({super.key});

  @override
  State<SigInScreen> createState() => _SigInScreenState();
}

class _SigInScreenState extends State<SigInScreen> {
  // TODO: 1. Deklarasikan variabel
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSignIn = false;

  bool _obScurePassword = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // TODO: 2. Pasang Appbar
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      // TODO: 2. Pasang body
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            // TODO: 4. Atur mainAxisAligment dan crossAxisAligment
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // TODO: 5. Pasang TextFormField Nama Pengguna
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: "Nama Pengguna",
                    hintText: 'Masukan Nama Pengguna',
                    border: OutlineInputBorder(),
                  ),
                ),
                // TODO: 6. Pasang TextFormField Kata Sandi
                SizedBox(height: 28,),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Kata Sandi",
                    hintText: "Masukan kata sandi",
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _obScurePassword = ! _obScurePassword;
                        });
                      },
                      icon: Icon(
                        _obScurePassword ? Icons.visibility_off
                          : Icons.visibility,
                      ),),
                  ),
                  obscureText: _obScurePassword,
                ), 
                // TODO: 7. Pasang ElevatedButton Sign In
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text('Sign In'),
                ),
                // TODO: 8. Pasang TextButton untuk Signn Up
                const SizedBox(height: 10,),
                // TextButton(
                //   onPressed: (){}, 
                //   child: Text('Belum punya akun? Daftar disini.')),
                RichText(
                  text: TextSpan(
                    text: 'Belum punya akun? ',
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children: [
                      TextSpan(
                        text: 'Daftar disini',
                        style : const TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = (){},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}