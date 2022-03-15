import 'package:flutter/material.dart';

class SignUserScreen extends StatelessWidget {
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var genderController = TextEditingController();

  SignUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: Image(
                  image: AssetImage('assets/icon.png'),
                  width: 291,
                  height: 211,
                ),
              ),
              const SizedBox(height: 50),
              // first last name------------------------------------------------
              SizedBox(
                width: 323,
                height: 44,
                child: Material(
                  elevation: 12,
                  shadowColor: const Color(0xFFC7D0F8),
                  borderRadius: BorderRadius.circular(30),
                  child: TextFormField(
                    controller: userNameController,
                    keyboardType: TextInputType.text,
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
                          borderSide:
                              const BorderSide(color: Color(0x1D1C6Aff))),
                      hintText: 'Username',
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 16),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // gender------------------------------------------------------------
              SizedBox(
                width: 323,
                height: 44,
                child: Material(
                  elevation: 12,
                  shadowColor: const Color(0xFFC7D0F8),
                  borderRadius: BorderRadius.circular(30),
                  child: TextFormField(
                    controller: genderController,
                    keyboardType: TextInputType.text,
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
                          borderSide:
                              const BorderSide(color: Color(0x1D1C6Aff))),
                      hintText: 'Gender',
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 16),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
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
                          borderSide:
                              const BorderSide(color: Color(0x1D1C6Aff))),
                      hintText: 'Email',
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 16),
                      border: const OutlineInputBorder(),
                      suffixIcon: const Icon(
                        Icons.mail,
                        color: Color(0xFF3A83B0),
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
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
                          borderSide:
                              const BorderSide(color: Color(0x1D1C6Aff))),
                      hintText: 'password',
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 16),
                      border: const OutlineInputBorder(),
                      suffixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xFF51D5E8),
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //confirm password-------------------------------------------------
              SizedBox(
                width: 323,
                height: 44,
                child: Material(
                  elevation: 12,
                  shadowColor: const Color(0xFFC7D0F8),
                  borderRadius: BorderRadius.circular(30),
                  child: TextFormField(
                    controller: confirmPasswordController,
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
                      hintText: 'Confirm password',
                      hintStyle:
                      const TextStyle(color: Colors.black26, fontSize: 16),
                      border: const OutlineInputBorder(),
                      suffixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xFF51D5E8),
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              //sign up button--------------------------------------------------
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 40,
                        child: RaisedButton(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          padding: const EdgeInsets.all(0.0),
                          onPressed: () {
                            print(emailController.text);
                            print(passwordController.text);
                            print(userNameController.text);
                            print(confirmPasswordController);
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
                                child: const Text("Sign Up",
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
      ),
    );
  }
}
