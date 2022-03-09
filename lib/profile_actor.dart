import 'package:flutter/material.dart';

class ActorProfile extends StatelessWidget {
  const ActorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Color(0xFF4ABBD6),
            fontSize: 32,
            fontFamily: 'SegoeScript',
          ),
        ),
        actions: const [
          Icon(
            Icons.edit_sharp,
            color: Color(0xFF1D1C6A),
            size: 32,
          ),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.logout,
            color: Color(0xFF1D1C6A),
            size: 32,
          ),
          SizedBox(
            width: 7,
          ),
        ],

      ),
    );
  }
}
