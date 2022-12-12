import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              'Entre em contato conosco através das redes sociais:',
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 14.0,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 4.0),
                  //   child: Text(
                  //     'Home',
                  //     style: GoogleFonts.nunito(
                  //       color: Colors.black54,
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 12.0,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 4.0),
                  //   child: Text(
                  //     'Find a Team',
                  //     style: GoogleFonts.nunito(
                  //       color: Colors.black54,
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 12.0,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      onPressed: () => {
                            js.context.callMethod('open',
                                ['https://www.instagram.com/sobrenos_brasil/'])
                          },
                    ),
                  ),
                ],
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 6.0),
                    //   // child: Text(
                    //   //   'About',
                    //   //   style: GoogleFonts.nunito(
                    //   //     color: Colors.black,
                    //   //     fontWeight: FontWeight.w800,
                    //   //     fontSize: 14.0,
                    //   //   ),
                    //   // ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.twitter),
                        onPressed: () => {
                            js.context.callMethod('open',
                                ['https://twitter.com/sobrenos_brasil?t=jHJss2cTiQ1y9vS_77X0GA&s=09'])
                          },
                      ),
                    ),
                  ]),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Tariffs',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'FAQ\'s',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Contacts',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              // //     ),
              //   ],
              // ),

              //same thing like first is repeated....

              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Free Tools',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black,
              //           fontWeight: FontWeight.w800,
              //           fontSize: 14.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Community',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Project Management',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Statistics',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Legal',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black,
              //           fontWeight: FontWeight.w800,
              //           fontSize: 14.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Privacy Policy',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Terms of Use',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 4.0),
              //       child: Text(
              //         'Payments',
              //         style: GoogleFonts.nunito(
              //           color: Colors.black54,
              //           fontWeight: FontWeight.w500,
              //           fontSize: 12.0,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.copyright_rounded,
                color: Colors.black54,
                size: 15.0,
              ),
              Text(
                '2022 All rights reserved',
                style: GoogleFonts.nunito(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
