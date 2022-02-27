import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //debug

            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage('assets/icon.png'),
                  width: 281,
                  height: 201,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //username--------------------
            SizedBox(
              width: 323,
              height: 44,
              child: TextFormField(
                controller: userNameController,

                keyboardType: TextInputType.text,
                onFieldSubmitted: (String value) {
                  print(value);
                },
                onChanged: (String value) {
                  print(value);
                },
                //for email@..................................
                //shadowColor: Color(0xFFC7D0F8),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0x1D1C6Aff)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0x1D1C6Aff))),
                  hintText: 'username',
                  hintStyle:
                      const TextStyle(color: Colors.black12, fontSize: 14),
                  border: const OutlineInputBorder(),
                  suffixIcon: const Icon(
                    Icons.account_circle_outlined,
                    color: Color(0xFF51D5E8),
                    size: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            //password-------------------
            SizedBox(
              width: 323,
              height: 44,
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
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0x1D1C6Aff)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0x1D1C6Aff))),
                  hintText: 'password',
                  hintStyle:
                      const TextStyle(color: Colors.black12, fontSize: 14),
                  border: const OutlineInputBorder(),
                  suffixIcon: const Icon(
                    Icons.lock_outline_rounded,
                    color: Color(0xFF3A83B0),
                    size: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //sign in button--------------
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 90,
                  height: 40,


                  child: MaterialButton(
                    onPressed: () {

                      print(userNameController.text);
                      print(passwordController.text);
                    },
                    child: Ink(

                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            //don't have account---------
            const SizedBox(
              height: 290,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Color(0xFF8A9EAD), fontSize: 12),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('SIGN UP',
                      style: TextStyle(color: Color(0xFF1F236E), fontSize: 12)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
