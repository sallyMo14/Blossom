import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _emailTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailTextController.addListener(_emailLatestValue);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      // extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){Navigator.pop(context,true);},
          color: Color.fromARGB(2000, 18, 25, 36),
        ),
      ),
      body:Container(
          // color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Padding(
                    padding: EdgeInsets.only(top: 113, left: 16),
                    child: Text(
                      "Forget \nPassword",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.abhayaLibre(
                          fontWeight: FontWeight.w400, height: 1, fontSize: 40),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 105),
                    child: Text(
                        "Please type your email below and we will give you a OTP code",
                        style: GoogleFonts.abhayaLibre(
                            fontSize: 17, fontWeight: FontWeight.w400 )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 24, right: 16),
                    // child: TextFormField(
                    //   controller: _emailTextController,
                    //   maxLines: 1,
                    //   enabled: true,
                    //   onChanged: (text) {
                    //     print("email changed");
                    //     print(_emailTextController.text);
                    //   },
                    //   decoration: const InputDecoration(
                    //       prefixIcon: Icon(Icons.email),
                    //       border: OutlineInputBorder(),
                    //       hintText: "Enter email or username"),
                    // ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, top: 24, right: 16),
                    child: TextFormField(
                      controller: _emailTextController,
                      maxLines: 1,
                      enabled: true,
                      onChanged: (text) {
                        print("email changed");
                        print(_emailTextController.text);
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        hintText: "Type email",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 265),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/forget_password_screen');
                        },
                        onHover: (boo) {},
                        child: Text("Use phone number",
                            style: GoogleFonts.abhayaLibre(
                              color: Colors.black,
                            ))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: ElevatedButton(
                      child: const Text('Next'),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(2000, 243, 101, 31),
                          padding: EdgeInsets.only(
                              left: 74 + 70, right: 74 + 70, top: 17, bottom: 17),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          )),
                      onPressed: () {},
                    ),
                  )
                ],



        )
      )


    );
  }
  String _emailLatestValue() {
    return _emailTextController.text;
  }

}
