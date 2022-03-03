import 'package:flutter/material.dart';

class SignUserScreen extends StatefulWidget {
  SignUserScreen({Key? key}) : super(key: key);

  @override
  _SignUserScreenState createState() => _SignUserScreenState();
}

class _SignUserScreenState extends State<SignUserScreen> {
  List<dynamic> gender = [];
  String? genderId;
  var firstNameController = TextEditingController();
  var LastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    this.gender.add({"id": 1, "label": "Male"});
    this.gender.add({"id": 2, "label": "Female"});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // first last name------------------------------------------------
              Row(
                children: [
                  //   SizedBox(
                  //     width: 150,
                  //     height: 44,
                  //     child: TextFormField(
                  //       //controller: FirstNameController,
                  //
                  //       keyboardType: TextInputType.text,
                  //       onFieldSubmitted: (String value) {
                  //         print(value);
                  //       },
                  //       onChanged: (String value) {
                  //         print(value);
                  //       },
                  //       //shadowColor: Color(0xFFC7D0F8),
                  //       decoration: InputDecoration(
                  //         contentPadding: const EdgeInsets.only(left: 15.0),
                  //         enabledBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //           borderSide: const BorderSide(color: Color(0x1D1C6Aff)),
                  //         ),
                  //         focusedBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(30),
                  //             borderSide: const BorderSide(color: Color(0x1D1C6Aff))),
                  //         hintText: 'First Name',
                  //         hintStyle:
                  //         const TextStyle(color: Colors.black26, fontSize: 16),
                  //         border: const OutlineInputBorder(),
                  //       ),
                  //     ),
                  //   ),

                  SizedBox(
                    width: 150,
                    height: 44,
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
                ],
              ),

             // gender------------------------------------------------------------

              FormHelper.dropDownWidget (
                context,
                "Gender",
                this.genderId,
                this.gender,
                  (onChangedVal){
                  this.genderId = onChangedVal;
                  print("gender: $onChangedVal");
                  },
                    (onValidateVal){
                  if(onValidateVal == null){
                    return 'Please Select Gender';
                  }
                  return null;
              },
                borderColer: Theme.of(context).primaryColor,
                borderFocusColer: Theme.of(context).primaryColor,
                borderRadius: 30,
                optionalValue:"id",
                optionalLable:"label",
              ),

              //email----------------------------------------------------------
              SizedBox(
                width: 323,
                height: 44,
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
              const SizedBox(
                height: 40,
              ),
              //password----------------------------------------------------------
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
                      width: 90,
                      height: 40,
                      child: MaterialButton(
                        onPressed: () {
                          print(emailController.text);
                          print(passwordController.text);
                          print(firstNameController.text);
                          print(LastNameController.text);
                        },
                        child: Ink(
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        elevation: 5,
                        color: Colors.blue,
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
