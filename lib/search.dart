import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
                Icons.filter_list_sharp,
                color: Color(0xFF1D1C6A),
                size: 32,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: const Color(0xFF1D1C6A)),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Color(0xFF51D5E8),
                    size: 36,
                  ),
                ],
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
                    style: TextStyle(fontSize: 25.0, color: Color(0xFF8A9EAD)),
                  ),
                ),
                SizedBox(
                  width: 220.0,
                ),
                Text(
                  'See All ',
                  style: TextStyle(fontSize: 20.0, color: Color(0xFF8A9EAD)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildSearchScreen(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10.0,
                ),
                itemCount: 6,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSearchScreen() => Row(
        children: const [
          SizedBox(
            width: 20.0,
          ),

          Text(
            'Search history ',
            style: TextStyle(
              fontSize: 15.0, color: Color(0xFF8A9EAD)
            ),
          ),
          SizedBox(
            width: 220.0,
          ),
          //IconButton(icon: Icon(Icons.close,) , onPressed: () {  },),
           Text(
             ' x ',
             style: TextStyle(
               fontSize: 15.0, color: Color(0xFF8A9EAD)
             ),
           ),
        ],
      );
}
