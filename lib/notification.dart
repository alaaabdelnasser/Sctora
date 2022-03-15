import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Color(0xFF51D5E8),
            fontSize: 32,
            fontFamily: 'SegoeScript',
          ),
        ),
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
                itemBuilder: (context, index) => buildNotificationScreen(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: 10,
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNotificationScreen() => Row(children: [
        Container(
          height: 70,
          child: const CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
              'https://picjumbo.com/wp-content/uploads/alone-with-his-thoughts-1080x720.jpg',
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'description description description description description description description description description',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ]);
}
