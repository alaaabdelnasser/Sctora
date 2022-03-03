import 'package:flutter/material.dart';

class SignUserScreen extends StatefulWidget {
  SignUserScreen({Key? key}) : super(key: key);

  @override
  _SignUserScreenState createState() => _SignUserScreenState();
}

class _SignUserScreenState extends State<SignUserScreen> {
  var firstNameController = TextEditingController();
  var LastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var genderController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // first last name------------------------------------------------
                    SizedBox(
                      width: 150,
                      height: 44,
                      child: Material(
                        elevation: 18,
                        shadowColor: const Color(0xFFC7D0F8),
                        borderRadius: BorderRadius.circular(30),
                        child: TextFormField(
                          //controller: FirstNameController,

                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                          onChanged: (String value) {
                            print(value);
                          },
                          //shadowColor: Color(0xFFC7D0F8),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 15.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0x1D1C6Aff)),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(color: Color(0x1D1C6Aff))),
                            hintText: 'First Name',
                            hintStyle:
                            const TextStyle(color: Colors.black26, fontSize: 16),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                 const SizedBox(
                   height: 30,
                 ),

                  SizedBox(
                    width: 150,
                    height: 44,
                    child: Material(
                      elevation: 18,
                      shadowColor: const Color(0xFFC7D0F8),
                      borderRadius: BorderRadius.circular(30),
                      child: TextFormField(
                        controller: LastNameController,

                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        //shadowColor: Color(0xFFC7D0F8),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 15.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Color(0x1D1C6Aff)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: Color(0x1D1C6Aff))),
                          hintText: 'Last Name',
                          hintStyle: const TextStyle(
                              color: Colors.black26, fontSize: 16),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),


             // gender------------------------------------------------------------
              SizedBox(
                width: 323,
                height: 44,
                child: Material(
                  elevation: 18,
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
                          borderSide: const BorderSide(color: Color(0x1D1C6Aff))),
                      hintText: 'Gender',
                      hintStyle:
                      const TextStyle(color: Colors.black26, fontSize: 16),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),

        const SizedBox(
          height: 30,
        ),

              //email----------------------------------------------------------
              SizedBox(
                width: 323,
                height: 44,
                child: Material(
                  elevation: 18,
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
                  elevation: 18,
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
                height: 20,
              ),

              //sign up button--------------------------------------------------
              Padding(
                padding: const EdgeInsets.only(right: 36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                          print(firstNameController.text);
                          print(LastNameController.text);
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
