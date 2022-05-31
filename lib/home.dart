import 'package:flutter/material.dart';
import 'package:sctora/actors.dart';
import 'package:sctora/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Color(0xFF51D5E8),
            fontSize: 27.0,
          ),
        ),
        actions: [
          // IconButton(
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => ActorsScreen(),
          //         ),
          //       );
          //     },
          //     icon: const Icon(Icons.filter_list,
          //         color: Color(0xFF1D1C6A), size: 35.0)),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            icon: const Icon(Icons.account_circle,
                color: Color(0xFF1D1C6A), size: 35.0),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                height: 335,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF1D1C6A),
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
                        SizedBox(width: 110,),
                        Image( image: AssetImage('assets/images/Post2.jpg'),
                            height: 180.0,
                            width: 180.0)
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
              const SizedBox(height: 20),
              Container(
                height: 255,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF1D1C6A),
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
                                AssetImage('assets/images/jukumo.png')),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Jukumo',
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
                          'We are searching for a talented actor.'
                              '\nJob Requirements:'
                              '\n-Egypt nationality, Female, good looking, age 18\nyears not over 35 years.'
                              '\n-Acting experience and actor experience are\npreferred.'
                              '\n-Have certain talents and an outgoing personality. '
                              '\n-Proficient in English is preferred. ',
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
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
                            color: Color(0xFF4ABBD6),
                            size: 40,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text( '47',
                              style: TextStyle(fontSize: 18, color: Colors.black45),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 330,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xFF1D1C6A),
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
                            AssetImage('assets/images/bebrand.jpg')),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          'BeBrand',
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
                          'Check out our latest work.\n'
                              'Creative Director: Mohamed Ehab\n'
                              'Production Manager: Ahmed M Gamal\n'
                              'Casting: Emad Adel',
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        SizedBox(width: 110,),
                        Image( image: AssetImage('assets/images/Post3.jpg'),
                            height: 180.0,
                            width: 180.0)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 10.0,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF3A83B0),
              size: 35.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              color: Color(0xFF3A83B0),
              size: 35.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xFF3A83B0),
              size: 35.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Color(0xFF3A83B0),
              size: 35.0,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
