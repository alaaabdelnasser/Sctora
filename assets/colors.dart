import 'package:flutter/material.dart';


const shadeColor = Color(0xFFC7D0F8);
const borderColor = Color(0x1D1C6Aff);
const gradientColor = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0xFF51D5E8), Color(0xff1D1C6A)],
);
const fadedColor = Color(0xFF8A9EAD);
const navyTextColor = Color(0xFF1F236E);
const icon1Color = Color(0xFF1D1C6A);
const icon2Color = Color(0xFF3A83B0);
const headColor = Color(0xFF51D5E8);

const kAnimationDuration = Duration(milliseconds: 200);



const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";


