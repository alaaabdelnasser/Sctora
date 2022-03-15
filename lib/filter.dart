import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
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
              icon: Icon(
                Icons.filter_list_sharp,
                color: Color(0xFF1D1C6A),
                size: 32,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  30.0,
                ),
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
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Gender',
                style: TextStyle(fontSize: 30.0, color: Color(0xFF8A9EAD)),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF79CDE0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 25.0,
                  child: MaterialButton(
                    onPressed: () {
                      print('Male');
                    },
                    child: const Text(
                      'Male',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF79CDE0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 25.0,
                  child: MaterialButton(
                    onPressed: () {
                      print('Female');
                    },
                    child: const Text(
                      'Female',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Type',
              style: TextStyle(fontSize: 30.0, color: Color(0xFF8A9EAD)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF79CDE0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  width: 80.0,
                  height: 25.0,
                  child: MaterialButton(
                    onPressed: () {
                      print('Type Action');
                    },
                    child: const Text(
                      'Action',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF79CDE0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 25.0,
                  child: MaterialButton(
                    onPressed: () {
                      print('Type Romantic');
                    },
                    child: const Text(
                      'Romantic',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF79CDE0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 25.0,
                  child: MaterialButton(
                    onPressed: () {
                      print('Type Drama');
                    },
                    child: const Text(
                      'Drama',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF79CDE0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 25.0,
                  child: MaterialButton(
                    onPressed: () {
                      print('Type Comedy');
                    },
                    child: const Text(
                      'Comedy',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Hight',
              style: TextStyle(fontSize: 30.0, color: Color(0xFF8A9EAD)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF79CDE0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              width: double.infinity,
              height: 30.0,
              child: MaterialButton(
                onPressed: () {
                  print('Height Number');
                },
                child: const Text(
                  'From - To ',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Weight',
              style: TextStyle(fontSize: 30.0, color: Color(0xFF8A9EAD)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF79CDE0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              width: double.infinity,
              height: 30.0,
              child: MaterialButton(
                onPressed: () {
                  print('Weight Number');
                },
                child: const Text(
                  'From - To ',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
