import 'package:flutter/material.dart';
// import "package:hovering/hovering.dart";
import 'package:responsive_sizer/responsive_sizer.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      height: 10.5.h,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
             width: Adaptive.w(20),    // This will take 20% of the screen's width
          ),
          Tab(
          height: 10.5.h,
           icon: Image.asset('lib/assets/images/logo.png')
          ),
          SizedBox(
             width: Adaptive.w(10),
          ),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          // //   HoverButton(
          // //   hoverElevation: 0,
          // //   elevation: 0,
          // //   onpressed: () {},
          // //   color: Colors.transparent,
          // //   hoverColor: Colors.transparent,
          // //   hoverTextColor: Colors.purple,
          // //   textColor: Colors.white,
          // // //   child: const Text(
          // // //     'Conheça',
          // // //     style: TextStyle(
          // // //       fontSize: 23,
          // // //     ),
          // // //   ),
          // // // ),
          // // //     SizedBox(
          // // //       width: 40.0,
          // // //     ),
          // // //    HoverButton(
          // // //   hoverElevation: 0,
          // // //   elevation: 0,
          // // //   onpressed: () {},
          // // //   color: Colors.transparent,
          // // //   hoverColor: Colors.transparent,
          // // //   hoverTextColor: Colors.purple,
          // // //   textColor: Colors.white,
          // // //   child: const Text(
          // // //     'Participe',
          // // //     style: TextStyle(
          // // //       fontSize: 23,
          // // //     ),
          // // //   ),
          // // // ),
          // // //     SizedBox(
          // // //       width: Adaptive.w(5), 
          // // //     ),
          // // //     HoverButton(
          // // //   hoverElevation: 0,
          // // //   elevation: 0,
          // // //   onpressed: () {},
          // // //   color: Colors.transparent,
          // // //   hoverColor: Colors.transparent,
          // // //   hoverTextColor: Colors.purple,
          // // //   textColor: Colors.white,
          // // //   child: const Text(
          // // //     'Artigos',
          // // //     style: TextStyle(
          // // //       fontSize: 23,
          // // //     ),
          // // //   ),
          // // ),
          //   ],
          // ),
          SizedBox(
            width: Adaptive.w(5),
          ),
          
        ],
      ),
    );
  }
}