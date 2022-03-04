import 'package:flutter/material.dart';
class ActorProfile extends StatelessWidget{
  const ActorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
          children: [
            buildCoverImage(),
            buildProfileImage(),
      ],
    ),
    );
  }
  Widget buildCoverImage() => Container(
    color: Colors.white,

    child: Image.,
  );

  Widget buildProfileImage() => const CircleAvatar(
    backgroundColor: Colors.white,
  );
}