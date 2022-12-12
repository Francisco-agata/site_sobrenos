import 'dart:math';
import 'dart:js' as js;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'src/Footer.dart';
import 'src/Header.dart';
import 'src/InfoPalette.dart';
import 'src/ProfileImage.dart';
import 'src/ProfileTile.dart';

void main() {
  runApp(
    ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        home: MyApp(),
      );
    }),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController _controller;
  double pixels = 0.0;

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
        print(_controller.position.pixels);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          controller: _controller,

          /// yep its animating..... :D
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100.5.h,
                        width: Adaptive.w(45),
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180.0, 170.0),
                              child: Container(
                                width: Adaptive.w(50),
                                height: 60.5.h,
                                // height: 350.0,
                                // width: 700.0,
                                decoration: BoxDecoration(
                                  color: Colors.cyan.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(300.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 200.0,
                              left: 100.0,
                              child: Container(
                                width: Adaptive.w(45),
                                height: 90.5.h,
                                // height: 400.0,
                                // width: 400.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Contra a desigualde de genêro e',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Pela dignidade menstrual.',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                height: 5.5.h,
                                      // height: 20.0,
                                    ),
                                    Container(
                                     width: Adaptive.w(45),
                                      child: Text(
                                        'Sobre Nós é uma entidade feminista que luta em defesa da vida das mulheres e pela Dignidade Menstrual. Faça parte!',
                                        style: GoogleFonts.nunito(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                       height: 5.5.h,
                                    ),
                                    Row(
                                      children: [
                                        // Container(
                                        //   height: 45.0,
                                        //   width: 230.0,
                                        // ),
                                        SizedBox(
                                          width: Adaptive.w(3),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.cyan,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                          onPressed: () => {
                                            js.context.callMethod('open', [
                                              'https://docs.google.com/forms/d/e/1FAIpQLSfc3o6DvgTv61Usy9kKjvxfnrqcNqx8UG5pnz0Ri6ebWr8L0Q/viewform'
                                            ])
                                          },
                                          child: Container(
                                          height: 10.5.h,
                                           width: Adaptive.px(110),
                                            child: Center(
                                              child: Text(
                                                'Vem com a gente! ♀️',
                                                style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                       height: 100.5.h,
                        color: Colors.white,
                        width: Adaptive.w(30),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                              top: 140.0,
                              left: 90.0,
                              diameter: 200.0,
                              image:
                                  'lib/assets/images/profileImageAbsorvente.jpeg',
                            ),
                            ProfileImage(
                              top: 160.0,
                              left: 310.0,
                              diameter: 100.0,
                              image: 'lib/assets/images/profileImageStand.jpeg',
                            ),
                            ProfileImage(
                              top: 275.0,
                              left: 280.0,
                              diameter: 280.0,
                              image:
                                  'lib/assets/images/profileImageCrianca.jpeg',
                            ),
                            ProfileImage(
                              top: 360.0,
                              left: 90.0,
                              diameter: 170.0,
                              image:
                                  'lib/assets/images/profileImageSorriso.jpeg',
                            ),
                            ProfileTile(
                              top: 350.0,
                              left: 50.0,
                              title: 'Um projeto feito de mulheres',
                              subTitle: 'e para mulheres',
                              factor: 1.1,
                            ),
                            ProfileTile(
                              top: 140.0,
                              left: -10.0,
                              title: '+3.000 absorventes doados!',
                              subTitle: '+300 mulheres atendidas mensalmente',
                              factor: 1.1,
                            ),
                            ProfileTile(
                              top: 150.0,
                              left: 380.0,
                              title: 'Se identifica como mulher?',
                              subTitle: 'Vem fazer parte.',
                              factor: 1.1,
                            ),
                            ProfileTile(
                              top: 285.0,
                              left: 440.0,
                              title: 'A luta das mulheres muda o mundo!',
                              subTitle: 'Você não está sozinha.',
                              factor: 1.1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Header(),
                ],
              ),
              Container(
                height: 80.5.h,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      right: -200.0,
                      child: Container(
                         width: Adaptive.w(20),
                         height: 30.5.h,
                        // height: 330.0,
                        // width: 430.0,
                        decoration: BoxDecoration(
                          color: Colors.cyan[100],
                          borderRadius: BorderRadius.circular(300.0),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Contribua',
                          style: GoogleFonts.nunito(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                         height: 5.5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AnimatedOpacity(
                              opacity: pixels >= 100 ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 500),
                              child: AnimatedPadding(
                                duration: Duration(milliseconds: 500),
                                padding: EdgeInsets.only(
                                    left: pixels >= 100 ? 0.0 : 500.0),
                                child: InfoPalette(
                                    title: 'Doe',
                                    text:
                                        'Doe items ou qualquer valor e torne possível nossas ações.\n pix: sobrenosbrasil@gmail.com',
                                    icon: Icons.hotel_class_rounded),
                              ),
                            ),
                            InfoPalette(
                              title: 'Segue nas redes!',
                              text:
                                  'Segue, curte e compartilha nosso conteúdo (;',
                              icon: Icons.near_me_outlined,
                            ),
                            InfoPalette(
                              title: 'Faça Parte',
                              text:
                                  'Seja voluntária e contribua em nossa luta.',
                              icon: Icons.person_rounded,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        TextButton(
                          onPressed: () => {
                            js.context.callMethod('open',
                                ['https://www.instagram.com/sobrenos_brasil/'])
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.0,
                              vertical: 8.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Text(
                              'Saiba Mais',
                              style: GoogleFonts.nunito(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 90.5.h,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -250.0,
                      child: Container(
                        width: Adaptive.w(50),    // This will take 50% of the screen's width
                        height: 55.5.h,
                        // height: 450.0,
                        // width: 700.0,
                        decoration: BoxDecoration(
                          color: Colors.purple.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(400.0),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 500),
                      top: 20.0,
                      left: pixels >= 500 ? 100.0 : 0.0,
                      child: Container(
                        width: Adaptive.w(50),    // This will take 50% of the screen's width
                        height: 55.5.h,
                        // height: 400.0,
                        // width: 700.0,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          'lib/assets/images/vitoria.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // ProfileTile(
                    //   left: 80.0,
                    //   top: -10.0,
                    //   title: 'Send a final design to the team',
                    //   subTitle: 'Sara, Client',
                    //   factor: 1.0,
                    // ),
                    // ProfileTile(
                    //   left: 620.0,
                    //   top: 400.0,
                    //   title: 'Publish Your project whenever you want',
                    //   subTitle: 'Micheal',
                    //   factor: 1.0,
                    // ),
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 500),
                      right: pixels >= 600 ? 100.0 : 0.0,
                      top: 60.0,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: pixels >= 600 ? 1.0 : 0.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'O Sobre Nós',
                              style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25.0,
                                  color: Colors.purple),
                            ),
                            SizedBox(  
                        height: 5.5.h,
                            ),
                            Container(
                               width: Adaptive.w(30),
                              child: Text(
                                'é uma entidade feminista que luta em defesa do Brasil, da vida das mulheres e da Dignidade Menstrual. Iniciamos em 2021 em Porto Alegre/RS e atualmente estamos presente em cinco estados e no Distrito Federal. Através de ações de solidariedade garantimos dignidade menstrual para milhares de pessoas que menstruam. Lutamos também por Políticas Públicas eficientes que garantam vida digna para todas brasileiras. Faça parte dessa história, se torne uma Voluntária!',
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            SizedBox(
                        height: 5.5.h,
                            ),
                            // TextButton(
                            //   style: TextButton.styleFrom(
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(100.0),
                            //     ),
                            //     backgroundColor: Colors.grey[900],
                            //     padding: EdgeInsets.symmetric(
                            //       horizontal: 50.0,
                            //       vertical: 20.0,
                            //     ),
                            //   ),
                            //   onPressed: () {},
                            //   child: Text(
                            //     'Try for free',
                            //     style: GoogleFonts.nunito(
                            //       fontSize: 12.0,
                            //       fontWeight: FontWeight.w600,
                            //       color: Colors.white,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100.5.h,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  children: [
                    Align(
                      child: Column(
                        children: [
                          Text(
                            'Encontre o Polo mais próximo de você!',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w800,
                              fontSize: 25.0,
                            ),
                          ),
                          Text(
                            'Se inscrevendo em nosso forms de voluntariado, você é automaticamente\n encaminhada ao polo do Sobre Nós mais próximo de você.',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedAlign(
                      duration: Duration(milliseconds: 500),
                      alignment: pixels >= 1200
                          ? Alignment(0.0, 0.0)
                          : Alignment(-0.2, 0.0),
                      child: AnimatedOpacity(
                        opacity: pixels >= 1200 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Stack(
                              //   clipBehavior: Clip.none,
                              //   children: [
                              //     Positioned(
                              //       left: -70.0,
                              //       top: -60.0,
                              //       child: Icon(
                              //         Icons.format_quote,
                              //         color: Colors.grey[300],
                              //         size: 150.0,
                              //       ),
                              //     ),
                              //     // Text(
                              //     //   'Excellent',
                              //     //   style: GoogleFonts.nunito(
                              //     //     fontWeight: FontWeight.w800,
                              //     //     fontSize: 30.0,
                              //     //   ),
                              //     // ),
                              //   ],
                              // ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                width: 360.0,
                                child: Image.asset(
                                  'lib/assets/images/mapa.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              // Text(
                              //   'Comment detail',
                              //   style: GoogleFonts.nunito(
                              //     fontWeight: FontWeight.w800,
                              //     fontSize: 14.0,
                              //   ),
                              // ),
                              Container(
                                height: 1.5,
                                width: 100.0,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // TestimonialTile(
                    //   image:
                    //       'https://images.unsplash.com/photo-1565623006066-82f23c79210b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
                    //   left: 780.0,
                    //   top: pixels >= 1000 ? 100.0 : 130.0,
                    //   leftalign: false,
                    // ),
                    // TestimonialTile(
                    //   image:
                    //       'https://images.unsplash.com/photo-1612282131293-37332d3cea00?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1995&q=80',
                    //   left: 840.0,
                    //   top: pixels >= 1200 ? 400.0 : 430.0,
                    //   leftalign: false,
                    // ),
                    // TestimonialTile(
                    //   image:
                    //       'https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',
                    //   left: 440.0,
                    //   top: pixels >= 1300 ? 450.0 : 480.0,
                    //   leftalign: true,
                    // ),
                    Positioned(
                      right: 350.0,
                      top: 200.0,
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(60.0),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20.0,
                              offset: Offset(0.0, 10.0),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ),

                    //rest two also same only positions and size and color changes....
                    Positioned(
                      right: 200.0,
                      top: 250.0,
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.cyan.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(60.0),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20.0,
                              offset: Offset(0.0, 10.0),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 250.0,
                      top: 450.0,
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.purple.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(60.0),
                          // boxShadow: [
                          //   BoxShadow(
                          //     blurRadius: 20.0,
                          //     offset: Offset(0.0, 10.0),
                          //     color: Colors.black12,
                          //   ),
                          // ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 650.0,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: AssetImage("lib/assets/images/banner.png"),
                    opacity: 0.4,
                    fit: BoxFit.cover,
                  ),
                ),
                // color: Colors.orange.withOpacity(0.1),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AnimatedAlign(
                      duration: Duration(milliseconds: 500),
                      alignment: pixels >= 1600
                          ? Alignment(0.0, 1.0)
                          : Alignment(-0.2, 1.0),
                      child: AnimatedOpacity(
                        opacity: pixels >= 1600 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Container(
                          height: 600.0,
                          width: 400.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Artigos e Conscientização.',
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    CarouselSlider(
                                      items: [
                                        //1st Image of Slider
                                        HoverButton(
                                          onpressed: () => {
                                            js.context.callMethod('open', [
                                              'https://www.instagram.com/p/ClydEBura1c/?utm_source=ig_web_copy_link'
                                            ])
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'lib/assets/images/educacaoMenstrual.jpeg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),

                                        //2nd Image of Slider
                                        HoverButton(
                                          onpressed: () => {
                                            js.context.callMethod('open', [
                                              'https://www.instagram.com/p/ClZkuG5PxZP/?utm_source=ig_web_copy_link'
                                            ])
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'lib/assets/images/combateViolencia.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        //3rd Image of Slider
                                        HoverButton(
                                          onpressed: () => {
                                            js.context.callMethod('open', [
                                              'https://www.instagram.com/p/Cl17OHPvUYA/?utm_source=ig_web_copy_link'
                                            ])
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'lib/assets/images/direitoMenstruar.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),

                                        //4th Image of Slider
                                        HoverButton(
                                          onpressed: () => {
                                            js.context.callMethod('open', [
                                              'https://www.instagram.com/p/CkwLo0UPB_u/?utm_source=ig_web_copy_link'
                                            ])
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'lib/assets/images/maternidade.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        //5th Image of Slider
                                        HoverButton(
                                          onpressed: () => {
                                            js.context.callMethod('open', [
                                              'https://www.instagram.com/p/Cjlt2uXrkVE/?utm_source=ig_web_copy_link'
                                            ])
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'lib/assets/images/deputadas.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        HoverButton(
                                          onpressed: () => {
                                            js.context.callMethod('open', [
                                              'https://www.instagram.com/p/Cj8mqs9PaKi/?utm_source=ig_web_copy_link'
                                            ])
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'lib/assets/images/fome.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],

                                      //Slider Container properties
                                      options: CarouselOptions(
                                        height: 300.0,
                                        enlargeCenterPage: true,
                                        autoPlay: true,
                                        aspectRatio: 16 / 9,
                                        autoPlayCurve: Curves.fastOutSlowIn,
                                        enableInfiniteScroll: true,
                                        autoPlayAnimationDuration:
                                            Duration(milliseconds: 800),
                                        viewportFraction: 0.8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(
                              //   height: 20.0,
                              // ),
                              // Text(
                              //   'Freelancer - Community of people who values their time',
                              //   style: GoogleFonts.nunito(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.w600,
                              //     fontSize: 14.0,
                              //   ),
                              // ),
                              // SizedBox(
                              //   height: 30.0,
                              // ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     // TextButton(
                              //     //   onPressed: () {},
                              //     //   child: TextButton(
                              //     //     style: TextButton.styleFrom(
                              //     //       shape: RoundedRectangleBorder(
                              //     //         borderRadius:
                              //     //             BorderRadius.circular(40.0),
                              //     //       ),
                              //     //       backgroundColor: Colors.white,
                              //     //       padding: EdgeInsets.all(0.0),
                              //     //     ),
                              //     //     onPressed: () {},
                              //     //     child: Container(
                              //     //       padding: EdgeInsets.symmetric(
                              //     //         horizontal: 30.0,
                              //     //         vertical: 12.0,
                              //     //       ),
                              //     //       decoration: BoxDecoration(
                              //     //         borderRadius:
                              //     //             BorderRadius.circular(40.0),
                              //     //         border: Border.all(
                              //     //           color: Colors.white,
                              //     //         ),
                              //     //       ),
                              //     //       // child: Text(
                              //     //       //   'Get My Price',
                              //     //       //   style: GoogleFonts.josefinSans(
                              //     //       //     color: Color(0xff373e98),
                              //     //       //     fontSize: 12.0,
                              //     //       //     fontWeight: FontWeight.w800,
                              //     //       //   ),
                              //     //       // ),
                              //     //     ),
                              //     //   ),
                              //     // ),
                              //     SizedBox(
                              //       width: 20.0,
                              //     ),
                              //     // TextButton(
                              //     //   style: TextButton.styleFrom(
                              //     //     shape: RoundedRectangleBorder(
                              //     //       borderRadius:
                              //     //           BorderRadius.circular(40.0),
                              //     //     ),
                              //     //     //color: Colors.white,
                              //     //     padding: EdgeInsets.all(0.0),
                              //     //   ),
                              //     //   onPressed: () {},
                              //     //   child: Container(
                              //     //     padding: EdgeInsets.symmetric(
                              //     //       horizontal: 30.0,
                              //     //       vertical: 12.0,
                              //     //     ),
                              //     //     decoration: BoxDecoration(
                              //     //       borderRadius:
                              //     //           BorderRadius.circular(40.0),
                              //     //       border: Border.all(
                              //     //         color: Colors.white,
                              //     //       ),
                              //     //     ),
                              //     //     child: Text(
                              //     //       'Try for free',
                              //     //       style: GoogleFonts.josefinSans(
                              //     //         color: Colors.white,
                              //     //         fontSize: 12.0,
                              //     //         fontWeight: FontWeight.w800,
                              //     //       ),
                              //     //     ),
                              //     //   ),
                              //     // ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      child: Footer(),
                    ),
                    Align(
                      alignment: Alignment(1.18, 0.0),
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.brown[400],
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
