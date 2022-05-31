import 'package:flutter/material.dart';

class SignInfoScreen extends StatefulWidget {
  const SignInfoScreen({Key? key}) : super(key: key);

  @override
  State<SignInfoScreen> createState() => _SignInfoScreenState();
}

class _SignInfoScreenState extends State<SignInfoScreen> {
  double age = 4.0;
  double height = 60.0;
  double weight = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children:  [
         const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Image(
              image: AssetImage('assets/icon.png'),
              width: 250,
              height: 250,
            ),
          ),
          const SizedBox(height: 5),

            Material(
              elevation: 12,
              shadowColor: const Color(0xFFC7D0F8),
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 80,
                width: 350,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1D1C6A),
                  width: 0.5,
                ),),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text('Gender:', style: TextStyle(fontSize: 20, color: Colors.grey),),
                    ),
                    const SizedBox(width: 40),
                    IconButton(onPressed: (){},
                        icon: const Icon(Icons.male), color: const Color(0xFF51D5E8), iconSize: 50,),
                    const SizedBox(width: 20),
                    IconButton(onPressed: (){},
                      icon: const Icon(Icons.female), color: Colors.pinkAccent, iconSize: 50,)
                  ],
                ),
              ),
            ),
          const SizedBox(height: 20),

          Material(
            elevation: 12,
            shadowColor: const Color(0xFFC7D0F8),
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 80,
              width: 350,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1D1C6A),
                  width: 0.5,
                ),),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Age: ${age.round()}',
                          style: const TextStyle(fontSize: 20.0, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),

                  Slider(
                    activeColor: const Color(0xFF79CDE0),
                    value: age,
                    min: 4.0,
                    max: 100.0,
                    onChanged: (value) {
                      setState(() {
                        age = value;
                        print('${age.round()}');
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Material(
            elevation: 12,
            shadowColor: const Color(0xFFC7D0F8),
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 80,
              width: 350,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1D1C6A),
                  width: 0.5,
                ),),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Height: ${height.round()}',
                          style: const TextStyle(fontSize: 20.0, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),

                  Slider(
                    activeColor: const Color(0xFF79CDE0),
                    value: height,
                    min: 50,
                    max: 200,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                        print('${height.round()}');
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Material(
            elevation: 12,
            shadowColor: const Color(0xFFC7D0F8),
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 80,
              width: 350,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF1D1C6A),
                  width: 0.5,
                ),),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'weight: ${weight.round()}',
                          style: const TextStyle(fontSize: 20.0, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),

                  Slider(
                    activeColor: const Color(0xFF79CDE0),
                    value: weight,
                    min: 0,
                    max: 150,
                    onChanged: (value) {
                      setState(() {
                        weight = value;
                        print('${weight.round()}');
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          // sign up button--------------------------------------------------
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
                    // print(emailController.text);
                    // print(passwordController.text);
                    // print(userNameController.text);
                    // print(confirmPasswordController);
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
    );
  }
}
