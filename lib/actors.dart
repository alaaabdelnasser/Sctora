import 'package:flutter/material.dart';
import 'package:sctora/profile.dart';

class ActorsScreen extends StatefulWidget
{
  @override
  State<ActorsScreen> createState() => _ActorsScreenState();
}

class _ActorsScreenState extends State<ActorsScreen> {

  int currentIndex = 0 ;

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    builder: (context) =>  ProfileScreen()),); },
            icon: const Icon(Icons.account_circle,
                color: Color(0xFF1D1C6A),
                size: 35.0),
          ),

        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            children: [
              SingleChildScrollView(
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>buildHomeScreen(),
                  separatorBuilder: (context,index) =>SizedBox(height: 7.0,) ,
                  itemCount: 1,
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
              label: '',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline,
                color: Color(0xFF3A83B0),
                size: 35.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
                color: Color(0xFF3A83B0),
                size: 35.0,
              ),

              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,
                color: Color(0xFF3A83B0),
                size: 35.0,
              ),
              label: '',
            ),
          ],
        )

    );
  }

  Widget buildHomeScreen()=> Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 35.0,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                        'assets/images/Jimmy.jpg')
                ),
                Text('Jimmy',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(width: 20.0,),
            Column(
              children: [
                CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                        'assets/images/mado.jpg')
                ),
                Text('Mado',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                        'assets/images/Mona.jpg')
                ),
                Text('Mona',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(width: 20.0,),
            Column(
              children: [
                CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                        'assets/images/Ali.jpg')
                ),
                Text('Ali',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                        'assets/images/Omnia.jpg')
                ),
                Text('Omnia',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(width: 20.0,),
            Column(
              children: [
                CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                        'assets/images/Gamal.jpg')
                ),
                Text('Gamal',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                        'assets/images/Ahmed.jpg')
                ),
                Text('Ahmed',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(width: 20.0,),
            Column(
              children: [
                CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage(
                        'assets/images/Rovan.jpg')
                ),
                Text('Rovan',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}