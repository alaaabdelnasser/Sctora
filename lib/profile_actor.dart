import 'package:flutter/material.dart';

class ActorProfile extends StatefulWidget {

  @override
  _ActorProfileState createState() => _ActorProfileState();
}

class _ActorProfileState extends State<ActorProfile>{

  
  
  // Future pickImage() async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  //     if (image == null) return;
  //     final imageTemporary = File(image.path);
  //     this.image = imageTemporary;
  //   } on platformException catch (e){
  //     print('Failed to pick image: $e');
  //   }
  // }

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
