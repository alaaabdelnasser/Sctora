import 'package:flutter/material.dart';

import 'filter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);


  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Search',
          style: TextStyle(
            color: Color(0xFF51D5E8),
            fontSize: 27,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  FilterSearchScreen()),);
              },
              icon: const Icon(
                Icons.filter_list,
                color: Color(0xFF1D1C6A),
                size: 35,
              ))
        ],
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 15.0),
          enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(color: Color(0xFF1D1C6A)),
          ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                const BorderSide(color: Color(0x1D1C6Aff))),
            hintText: 'Search',
            hintStyle:
            const TextStyle(color: Colors.black26, fontSize: 16),
            border: const OutlineInputBorder(),
            suffixIcon: const Icon(
              Icons.search,
              color: Color(0xFF51D5E8),
              size: 36,
            ),
                ),
                ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Recent ',
                      style: TextStyle(fontSize: 25.0, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 230.0,
                  ),
                  Text(
                    'See All ',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildSearchScreen(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10.0,
                  ),
                  itemCount: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearchScreen() => Row(
        children:  [

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Abdelrahman Gamal ',
                      style: TextStyle(
                        fontSize: 15.0, color: Colors.grey
                      ),

                    ),
          SizedBox(
            width: 210.0,
          ),
          //IconButton(icon: Icon(Icons.close,) , onPressed: () {  },),
               Text(
                 ' x ',
                 style: TextStyle(
                   fontSize: 15.0, color: Colors.grey
                 ),
               ),
             ],
           ),
          const SizedBox(height: 10,),
          Row(
            children: const [
              Text(
                'Ali Gad ',
                style: TextStyle(
                    fontSize: 15.0, color: Colors.grey
                ),
              ),

          SizedBox(
            width:299.0,
          ),
          //IconButton(icon: Icon(Icons.close,) , onPressed: () {  },),
          Text(
            ' x ',
            style: TextStyle(
                fontSize: 15.0, color: Colors.grey
            ),
          ),
        ],
          ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Text(
                      'Abdelrahman Ehab ',
                      style: TextStyle(
                          fontSize: 15.0, color: Colors.grey
                      ),
                    ),
                    SizedBox(
                      width: 221.0,
                    ),
                    Text(
                      ' x ',
                      style: TextStyle(
                          fontSize: 15.0, color: Colors.grey
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Text(
                      'Omnia Alsawaf ',
                      style: TextStyle(
                          fontSize: 15.0, color: Colors.grey
                      ),
                    ),
                    SizedBox(
                      width: 246.0,
                    ),
                    //IconButton(icon: Icon(Icons.close,) , onPressed: () {  },),
                    Text(
                      ' x ',
                      style: TextStyle(
                          fontSize: 15.0, color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],);
}
