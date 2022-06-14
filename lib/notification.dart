import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Color(0xFF51D5E8),
            fontSize: 27.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildNotificationScreen(),
                separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 1.0,
                ),
                itemCount:1 ,
              ),
            ),
          ],
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

  Widget buildNotificationScreen() => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 60.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Jimmy.jpg')),
              ],
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 10.0,
              ),
              child: Text(
                '1 people liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 5.0,
              ),
              child: Text(
                'Abdelrahman Gamal liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: const Color(0xFF1D1C6A),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 60.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Mona.jpg')),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/mado.jpg')),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Ali.jpg')),
              ],
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 10.0,
              ),
              child: Text(
                '3 people liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 5.0,
              ),
              child: Text(
                'Mona Samir, Abdelrahman Ehab and Ali Gad liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: const Color(0xFF1D1C6A),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 60.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Omnia.jpg')),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Ahmed.jpg')),
              ],
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 10.0,
              ),
              child: Text(
                '2 people liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 5.0,
              ),
              child: Text(
                'Omnia and Ahmed Essam liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: const Color(0xFF1D1C6A),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 60.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Jimmy.jpg')),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Ali.jpg')),
              ],
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 10.0,
              ),
              child: Text(
                '2 people liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 5.0,
              ),
              child: Text(
                'Abdelrahman Gamal and Ali Gad liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: const Color(0xFF1D1C6A),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 60.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/post1.jpg')),
               ],
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 10.0,
              ),
              child: Text(
                '1 people liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 5.0,
              ),
              child: Text(
                'Menna Elemam liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: const Color(0xFF1D1C6A),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 60.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Ahmed.jpg')),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Mona.jpg')),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/Rovan.jpg')),
              ],
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 10.0,
              ),
              child: Text(
                '3 people liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 60.0,
                top: 5.0,
              ),
              child: Text(
                'Ahmed Hany, Mona Samir and Rovan Tarek liked your post',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: const Color(0xFF1D1C6A),
            ),
          ],
        ),
      );
}
