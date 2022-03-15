import 'package:flutter/material.dart';
import 'package:sctora/password_reset.dart';
import 'package:sctora/sign_up_user.dart';
import 'colors.dart';
import 'home.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Image(
                  image: AssetImage('assets/icon.png'),
                  width: 291,
                  height: 211,
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            //email----------------------------------------------------------
            SizedBox(
              width: 323,
              height: 44,
              child: Material(
                elevation: 12,
                shadowColor: const Color(0xFFC7D0F8),
                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0x1D1C6Aff)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0x1D1C6Aff))),
                    hintText: 'Email',
                    hintStyle:
                        const TextStyle(color: Colors.black26, fontSize: 16),
                    suffixIcon: const Icon(
                      Icons.mail,
                      color: Color(0xFF51D5E8),
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //password----------------------------------------------------------
            SizedBox(
              width: 323,
              height: 44,
              child: Material(
                elevation: 12,
                shadowColor: const Color(0xFFC7D0F8),
                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0x1D1C6Aff)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0x1D1C6Aff))),
                    hintText: 'Password',
                    hintStyle:
                        const TextStyle(color: Colors.black26, fontSize: 16),
                    suffixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: Color(0xFF3A83B0),
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //forgot password---------------------------------------------------
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PasswordReset()));
              },
              child: const Text('Forgot Password?',
                  style: TextStyle(color: Color(0xFF8A9EAD), fontSize: 12)),
            ),
            const SizedBox(height: 10),
            //sign in button----------------------------------------------------
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.all(0.0),
                      onPressed: () {
                        // leads to home screen :
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF51D5E8), Color(0xff1D1C6A)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                            constraints: const BoxConstraints(
                                maxWidth: 100, minHeight: 50),
                            alignment: Alignment.center,
                            child: const Text("Sign In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16))),
                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(
              height: 160,
            ),

            //don't have account------------------------------------------------

            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Color(0xFF8A9EAD), fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      // leads to sign up screen :
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUserScreen()));
                    },
                    child: const Text('SIGN UP',
                        style:
                            TextStyle(color: Color(0xFF1F236E), fontSize: 12)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
