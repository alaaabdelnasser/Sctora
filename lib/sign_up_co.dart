import 'package:flutter/material.dart';

class SignCoScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var coNameController = TextEditingController();

  SignCoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 400.0),
              //company name-------------------------------------
              child: SizedBox(
                width: 323,
                height: 44,
                child: Material(
                  elevation: 12,
                  shadowColor: const Color(0xFFC7D0F8),
                  borderRadius: BorderRadius.circular(30),
                  child: TextFormField(
                    controller: coNameController,
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
                      hintText: 'Company Name',
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 16),
                      border: const OutlineInputBorder(),
                      suffixIcon: const Icon(
                        Icons.business,
                        color: Color(0xFF51D5E8),
                        size: 20,
                      ),
                    ),
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

            //sign up button--------------------------------------------------
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
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
                        print(coNameController.text);
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
    );
  }
}
