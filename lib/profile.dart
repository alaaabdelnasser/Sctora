import 'package:flutter/material.dart';
import 'profile edit.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfileScreenState();

  }

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Color(0xFF51D5E8),
            fontSize: 27.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileEdit()),
              );
            },
            icon: const Icon(Icons.edit,
                color: Color(0xFF1D1C6A), size: 35.0),
          ),
        ],
      ) ,
      body: SingleChildScrollView(
        child: (
            Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    elevation: 12,
                    shadowColor: const Color(0xFFC7D0F8),
                    borderRadius: BorderRadius.circular(70),
                    child: Container(
                      width: 140.0,
                      height: 140.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Colors.white, width: 3.0)),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Ahmed.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Ahmed Essam',
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black45),
              ),

              Row(
                children: const [
                   SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_right,
                  color:  Color(0xFF51D5E8),
                  size: 15,),
                  Text(
                   'Male',
                   style: TextStyle(
                       fontSize: 17.0,
                       color: Colors.black45),
                  ),
                ],
              ),
                  const SizedBox(
               height: 3,
                  ),
                  Row(
               children: const [
                 SizedBox(
                   width: 10,
                 ),
                 Icon(Icons.arrow_right,
                   color:  Color(0xFF51D5E8),
                   size: 15,),
                 Text(
                   '22',
                   style: TextStyle(
                       fontSize: 17.0,
                       color: Colors.black45),
                 ),
               ],
                  ),
                  const SizedBox(
               height: 3,
                  ),
                  Row(
               children: const [
                 SizedBox(
                   width: 10,
                 ),
                 Icon(Icons.arrow_right,
                   color:  Color(0xFF51D5E8),
                   size: 15,),
                 Text(
                   'Action, Drama',
                   style: TextStyle(
                       fontSize: 17.0,
                       color: Colors.black45),
                 ),
               ],
                  ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 5.0,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Material(
                elevation: 12,
                shadowColor: const Color(0xFFC7D0F8),
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0x1D1C6Aff),
                      width: 0.8,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                              radius: 20.0,
                              backgroundImage:
                              AssetImage('assets/images/Ahmed.jpg')),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Ahmed Essam',
                            style: TextStyle(fontSize: 25, color: Colors.black45),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 45),
                          Text(
                            'Jw Marriott Ad',
                            style: TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          SizedBox(width: 20,),
                          Image( image: AssetImage('assets/images/Post5.jpg'),
                              height: 360.0,
                              width: 360.0)
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          const SizedBox(width: 310),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star_border_rounded,
                              color: Color(0xFF51D5E8),
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            children: const [
                              SizedBox(height: 10),
                              Text( '9',
                                style: TextStyle(fontSize: 18, color: Colors.black45),),
                            ],
                          )
                        ],
                      ),
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
                  height: 520,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0x1D1C6Aff),
                      width: 0.8,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                              radius: 20.0,
                              backgroundImage:
                              AssetImage('assets/images/Ahmed.jpg')),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Ahmed Essam',
                            style: TextStyle(fontSize: 25, color: Colors.black45),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 45),
                          Text(
                            'During my latest advertisement. Thanks to the \ndirector, production team and my co-workers.',
                            style: TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          SizedBox(width: 20,),
                          Image( image: AssetImage('assets/images/Post2.jpg'),
                              height: 360.0,
                              width: 360.0)
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          const SizedBox(width: 310),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star_border_rounded,
                              color: Color(0xFF51D5E8),
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            children: const [
                              SizedBox(height: 10),
                              Text( '13',
                                style: TextStyle(fontSize: 18, color: Colors.black45),),
                            ],
                          )
                        ],
                      ),
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
                  height: 320,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0x1D1C6Aff),
                      width: 0.8,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                              radius: 20.0,
                              backgroundImage:
                              AssetImage('assets/images/Ahmed.jpg')),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Ahmed Essam',
                            style: TextStyle(fontSize: 25, color: Colors.black45),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 45),
                          Text(
                            'Latest AD with Rota Power',
                            style: TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          SizedBox(width: 20,),
                          Image( image: AssetImage('assets/images/Post6.jpg'),
                              height: 180.0,
                              width: 360.0)
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          const SizedBox(width: 310),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.star_border_rounded,
                              color: Color(0xFF51D5E8),
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Column(
                            children: const [
                              SizedBox(height: 10),
                              Text( '11',
                                style: TextStyle(fontSize: 18, color: Colors.black45),),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
  }
