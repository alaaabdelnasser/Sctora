import 'package:flutter/material.dart';
import 'package:sctora/sign_up_info.dart';

class SignUserScreen extends StatefulWidget {
  @override
  _SignUserScreenState createState() => _SignUserScreenState();
}

class _SignUserScreenState extends State<SignUserScreen> {
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  bool _isHidden = true;
  bool _isHidden2 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Image(
                  image: AssetImage('assets/icon.png'),
                  width: 250,
                  height: 250,
                ),
              ),
              const SizedBox(height: 20),
              // user name------------------------------------------------
              Container(
                width: 350,
                height: 44,
                child: Material(
                  elevation: 12,
                  shadowColor: const Color(0xFFC7D0F8),
                  borderRadius: BorderRadius.circular(30),
                  child: TextFormField(
                    controller: userNameController,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                        return " Enter Correct Username";
                      } else {
                        return null;
                      }
                    },
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
                      prefixIcon: const Icon(
                        Icons.person,
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
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]').hasMatch(value!)) {
                        return " Enter Correct Email";
                      } else {
                        return null;
                      }
                    },
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
                      prefixIcon: const Icon(
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
              Container(
                width: 350,
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
                    obscureText: _isHidden,
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
                      hintText: 'Password',
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 16),
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xFF51D5E8),
                        size: 20,
                      ),
                      suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          _isHidden ? Icons.visibility_off : Icons.visibility,
                          color: Color(0xFF3A83B0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),
              //confirm password-------------------------------------------------
              Container(
                width: 350,
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
                    obscureText: _isHidden2,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0x1D1C6Aff)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              const BorderSide(color: Color(0x1D1C6Aff))),
                      hintText: 'Confirm password',
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 16),
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xFF51D5E8),
                        size: 20,
                      ),
                      suffixIcon: InkWell(
                        onTap: _togglePasswordView2,
                        child: Icon(
                          _isHidden2 ? Icons.visibility_off : Icons.visibility,
                          color: Color(0xFF3A83B0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              //next button--------------------------------------------------
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInfoScreen()));
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
                            child: const Text("Next",
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

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _togglePasswordView2() {
    setState(() {
      _isHidden2 = !_isHidden2;
    });
  }
}
