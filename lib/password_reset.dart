import 'package:flutter/material.dart';

import 'login.dart';

// ignore: must_be_immutable
class PasswordReset extends StatelessWidget {
  var emailController = TextEditingController();
  PasswordReset({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 180.0),
                child: Image(
                  image: AssetImage('assets/icon.png'),
                  width: 291,
                  height: 211,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            //email----------------------------------------------------------
            Container(
              width: 350,
              height: 44,
              child: Material(
                elevation: 12,
                shadowColor: const Color(0xFFC7D0F8),
                borderRadius: BorderRadius.circular(30),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
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
            const SizedBox(height: 40),
            //reset button------------------------------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 160,
                  height: 40,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
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
                              maxWidth: 160, minHeight: 50),
                          alignment: Alignment.center,
                          child: const Text("Reset Password",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16))),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
