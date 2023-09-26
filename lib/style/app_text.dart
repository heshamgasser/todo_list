import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
 static TextStyle lightAppBarTitle = GoogleFonts.poppins(
   color: Colors.white, fontSize: 22.sp, fontWeight: FontWeight.bold
 );
 static TextStyle lightTimeFont = GoogleFonts.roboto(
   color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.normal
 );
 static TextStyle lightAddTaskTitleFont = GoogleFonts.poppins(
   color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.bold
 );
 static TextStyle lightAddTaskBodyFont = GoogleFonts.poppins(
   color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.bold
 );


 static TextStyle taskFont = GoogleFonts.poppins(
     color: Color(0xFF5D9CEC), fontSize: 18.sp, fontWeight: FontWeight.bold
 );
 static TextStyle taskDoneFont = GoogleFonts.poppins(
     color: Color(0xFF61E757), fontSize: 18.sp, fontWeight: FontWeight.bold
 );
 static TextStyle labelFont = GoogleFonts.poppins(
     color: Color(0xFFCDCACA), fontSize: 20.sp, fontWeight: FontWeight.bold
 );



 static TextStyle darkAppBarTitle = GoogleFonts.poppins(
   color: Colors.black, fontSize: 22.sp, fontWeight: FontWeight.bold
 );
 static TextStyle darkTimeFont = GoogleFonts.roboto(
     color: Colors.white, fontSize: 12.sp, fontWeight: FontWeight.normal
 );
 static TextStyle darkAddTaskTitleFont = GoogleFonts.poppins(
     color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.bold
 );
 static TextStyle darkAddTaskBodyFont = GoogleFonts.poppins(
     color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.bold
 );
}