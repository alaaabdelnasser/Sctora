import 'dart:ffi';
import 'package:flutter/material.dart';

class HomeSreenFilterActor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 00.0,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Color(0xFF51D5E8),
            fontSize: 32,
            fontFamily: 'SegoeScript',
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('filter');
              },
              icon: const Icon(
                Icons.add_road,
                color: Color(0xFF1D1C6A),
                size: 32.0,
              )),
          IconButton(
              onPressed: () {
                print('profile');
              },
              icon: const Icon(
                Icons.account_circle,
                color: Color(0xFF1D1C6A),
                size: 32.0,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildHomeScreenFilterActor(),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHomeScreenFilterActor() => Column(
        children: [
          Container(
            height: 160,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: const Color(0xFF1D1C6A)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    'https://picjumbo.com/wp-content/uploads/alone-with-his-thoughts-1080x720.jpg',
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Nickname',
                            style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'description description description description description description description description description',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Color(0xFF8A9EAD)),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      const Image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsdTTL1ooSOmv15hcseNO1V3WmeYUbDi00Fg&usqp=CAU'),
                        height: 80.0,
                        width: 80.0,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    print('stars');
                  },
                  icon: const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )),
              const SizedBox(
                width: 190.0,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('gold star');
                          },
                          icon: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 20.0,
                          )),
                      Text(
                        '50',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('silver star');
                          },
                          icon: const Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 20.0,
                          )),
                      const Text(
                        '35',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
