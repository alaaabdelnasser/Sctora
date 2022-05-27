import 'package:flutter/material.dart';

import 'filter.dart';
class HomeScreen  extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0 ;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(

        backgroundColor: Colors.white,
        title:
        const Text(
          'Home',
          style: TextStyle(
            color:Color(0xFF4ABBD6),
            fontSize: 27.0,
          ),
        ),
        actions:
        [
          IconButton(
              onPressed:()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context)=> FilterSearchScreen() ,
                ),
                );
              },
              icon: const Icon(Icons.filter_list,
                    color: Color(0xFF1D1C6A),
                    size: 35.0)),
          IconButton(
            onPressed:()
            {
              Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) =>  FilterSearchScreen()),); },
            icon: const Icon(Icons.account_circle,
            color: Color(0xFF1D1C6A),
            size: 35.0),
             ),

        ],
      ),


      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ( context, index) =>buildStoryItem(),

                  separatorBuilder:(context,index)=>SizedBox(width:20.0),
                  itemCount: 1,
                ),
              ),
              SizedBox(height:20.0),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index)=>buildChatItem() ,
                separatorBuilder: (context,index)=>SizedBox(height: 20.0,) ,
                itemCount: 2,
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurpleAccent[300],
        selectedFontSize: 10.0,
        currentIndex: currentIndex,
        onTap: (index)
        {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: Color(0xFF3A83B0),
              size: 35.0,
            ),
            label: 'home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline,
              color: Color(0xFF3A83B0),
              size: 35.0,
            ),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
              color: Color(0xFF3A83B0),
              size: 35.0,
            ),

            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important,
              color: Color(0xFF3A83B0),
              size: 35.0,
            ),
            label: 'notification',
          ),
        ],
      ),

    );
  }

  Widget buildChatItem()=> Expanded(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                //alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Image(
                    image: AssetImage('assets/images/post1.jpg'),
                    height: 120.0,
                    width: 120.0,
                  ),
                ],
              ),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundImage: AssetImage(
                          'assets/images/Omnia.jpg',
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text('Omnia',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:5.0,),
                  Text('Bastet'),
                  Text('The Goddess of the moon and of',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text('the sun.She represents the duality'),
                  Text('in all women'),
                  Row(
                    children: [
                      Text('97'),
                      IconButton(onPressed: (){},
                        icon:CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.favorite,
                              size: 18.0,
                              color: Colors.white,
                            )),),
                      Text('Like',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                //alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Image(
                    image: AssetImage('assets/images/Post2.jpg'),
                    height: 120.0,
                    width: 120.0,
                  ),
                ],
              ),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundImage: AssetImage(
                          'assets/images/Jimmy.jpg',
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text('Jimmy',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  Text('Latest project',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,

                  ),
                  Row(
                    children: [
                      Text('50'),
                      IconButton(onPressed: (){},
                        icon:CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.favorite,
                              size: 18.0,
                              color: Colors.white,
                            )),),
                      Text('Like',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                //alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Image(
                    image: AssetImage('assets/images/Post3.jpg'),
                    height: 120.0,
                    width: 120.0,
                  ),
                ],
              ),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundImage: AssetImage(
                          'assets/images/Ali.jpg',
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text('Ali',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  Text('our project',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,

                  ),
                  Row(
                    children: [
                      Text('23'),
                      IconButton(onPressed: (){},
                        icon:CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.favorite,
                              size: 18.0,
                              color: Colors.white,
                            )),),
                      Text('Like',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                //alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Image(
                    image: AssetImage('assets/images/Post4.jpg'),
                    height: 120.0,
                    width: 120.0,
                  ),
                ],
              ),
              SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundImage: AssetImage(
                          'assets/images/mado.jpg',
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text('Mona',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  Text('our project',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,

                  ),
                  Row(
                    children: [
                      Text('67'),
                      IconButton(onPressed: (){},
                        icon:CircleAvatar(
                            radius: 12.0,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.favorite,
                              size: 18.0,
                              color: Colors.white,
                            )),),
                      Text('Like',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    ),
  );

  Widget buildStoryItem()=>Row(
    children: [
      Container(
        width: 80.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [

                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage(
                    'assets/images/Jimmy.jpg',

                  ),
                ),

              ],
            ),
            SizedBox(height: 5.0,),
            Text('Jimmy',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
      SizedBox(width:10.0),
      Container(
        width: 80.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage(
                    'assets/images/mado.jpg',
                  ),
                ),

              ],
            ),
            SizedBox(height: 5.0,),
            Text('Mado',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
      SizedBox(width:10.0),
      Container(
        width: 80.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage(
                    'assets/images/Ali.jpg',
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0,),
            Text('Ali',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
      SizedBox(width:10.0),
      Container(
        width: 80.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage(
                    'assets/images/Omnia.jpg',
                  ),
                ),

              ],
            ),
            SizedBox(height: 5.0,),
            Text('Omnia',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
      SizedBox(width:10.0),
      Container(
        width: 80.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage(
                    'assets/images/Gamal.jpg',
                  ),
                ),

              ],
            ),
            SizedBox(height: 5.0,),
            Text('Gamal',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
      SizedBox(width:10.0),
      Container(
        width: 80.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage(
                    'assets/images/Mona.jpg',
                  ),
                ),

              ],
            ),
            SizedBox(height: 5.0,),
            Text('Mona',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    ],
  );
}

// {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build (BuildContext context)
//   {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title:
//         //Container(child: TextButton(onPressed: (){},child:Text('Home') ,)),
//         const Text(
//           'Home',
//           style: TextStyle(
//
//         color: Color(0xFF51D5E8),
//     fontSize: 32,
//           ),
//         ),
//         actions:
//         [
//           IconButton(onPressed:(){print('Menu');} ,
//               icon: const Icon(Icons.add_road,
//                     color: Color(0xFF1D1C6A),
//                     size: 32.0,)),
//           IconButton(onPressed:(){print('profile');} ,
//             icon: const Icon(Icons.account_circle_sharp,
//             color: Color(0xFF1D1C6A),
//              size: 32,))
//   ],
//       ),
//
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//
//             children: [
//               SingleChildScrollView(
//                 child: ListView.separated(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   itemBuilder: (context,index)=>buildHomeScreen(),
//                   separatorBuilder: (context,index) =>const SizedBox(height: 7.0,) ,
//                   itemCount: 10,
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//
//
//     );
//   }
//
//   Widget buildHomeScreen()=>Column(
//     children: [
//       //SizedBox(height: 20.0,),
//       Container(
//         height: 110,
//         width: 400,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30.0),
//           border: Border.all(color: const Color(0xFF1D1C6A)),
//           color: Colors.white,
//         ),
//         child: Row(
//             children: [
//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: CircleAvatar(
//                   radius: 30.0,
//                   backgroundImage: NetworkImage(
//                     'https://picjumbo.com/wp-content/uploads/alone-with-his-thoughts-1080x720.jpg',
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 10.0,),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     Padding(
//                       padding: EdgeInsets.only(top: 8.0),
//                       child: Text('Nickname',
//                         style: TextStyle(
//                           fontSize:20.0 ,
//                           color: Color(0xFF707070),
//                         ),
//                       ),
//                     ),
//                     Text('description description description description description description description description description description description description description description',
//                       maxLines: 3,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(color: Color(0xFF8A9EAD)),
//                     ),
//                   ],
//                 ),
//               ),
//             ]
//
//         ),
//       ),
//
//
//     ],
//   );
//
// }