import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
        //Container(child: TextButton(onPressed: (){},child:Text('Home') ,)),
        const Text(
          'Home',
          style: TextStyle(

        color: Color(0xFF51D5E8),
    fontSize: 32,
    fontFamily: 'SegoeScript',
          ),
        ),
        actions:
        [
          IconButton(onPressed:(){print('Menu');} ,
              icon: const Icon(Icons.add_road,
                    color: Color(0xFF1D1C6A),
                    size: 32.0,)),
          IconButton(onPressed:(){print('profile');} ,
            icon: const Icon(Icons.account_circle_sharp,
            color: Color(0xFF1D1C6A),
             size: 32,))
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
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>buildHomeScreen(),
                  separatorBuilder: (context,index) =>const SizedBox(height: 7.0,) ,
                  itemCount: 10,
                ),
              ),

            ],
          ),
        ),
      ),


    );
  }

  Widget buildHomeScreen()=>Column(
    children: [
      //SizedBox(height: 20.0,),
      Container(
        height: 110,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: const Color(0xFF1D1C6A)),
          color: Colors.white,
        ),
        child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    'https://picjumbo.com/wp-content/uploads/alone-with-his-thoughts-1080x720.jpg',
                  ),
                ),
              ),
              const SizedBox(width: 10.0,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('Nickname',
                        style: TextStyle(
                          fontSize:20.0 ,
                          color: Color(0xFF707070),
                        ),
                      ),
                    ),
                    Text('description description description description description description description description description description description description description description',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Color(0xFF8A9EAD)),
                    ),
                  ],
                ),
              ),
            ]

        ),
      ),


    ],
  );

}