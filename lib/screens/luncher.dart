import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Luncher extends StatefulWidget {
  const Luncher({Key? key}) : super(key: key);

  @override
  State<Luncher> createState() => _LuncherState();
}

class _LuncherState extends State<Luncher> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3), () {
       Navigator.pushReplacementNamed(context,'/login_newUser_screen');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.white, Color.fromARGB(200, 243, 101, 31)]
                )
            ),
            child: Column(children: [
              Padding(
                   padding: const EdgeInsets.only(top: 351 ,bottom: 30),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset("lib/assets/images/Logos.png"),
                  )
              ),
              // Text(
              //   "Hello Blossom!",
              //   style: GoogleFonts.acme(
              //       fontWeight: FontWeight.w400,
              //       fontSize: 26,
              //       color: Color.fromARGB(1500, 255,157, 43),
              //       wordSpacing: 12,
              //       letterSpacing: 2),
              // ),
            ])));
  }
}

