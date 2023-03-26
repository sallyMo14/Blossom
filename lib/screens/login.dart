import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _emailTextController.addListener(_emailLatestValue);
    _passwordTextController.addListener(_passwordLatestValue);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 113),
              child: Container(
                alignment: Alignment.topCenter,
                child: Image.asset("lib/assets/images/Logos.png"),
              )),
          SizedBox(
            height: 57,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text("Please login to use the app",
                style: GoogleFonts.abhayaLibre(
                    fontSize: 16, fontWeight: FontWeight.bold)),
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
              controller: _passwordTextController,
              maxLines: 1,
              enabled: true,
              onChanged: (text) {
                print("password changed");
                print(_passwordTextController.text);
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password_rounded),
                border: OutlineInputBorder(),
                hintText: "Type password",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 265),
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context,'/forget_password_screen');
                },
                onHover: (boo) {},
                child: Text("Forget Password?",
                    style: GoogleFonts.abhayaLibre(
                      color: Colors.black,
                    ))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32),
            child: ElevatedButton(
              child: const Text('Sign In'),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(2000, 243, 101, 31),
                  padding: EdgeInsets.only(left: 74+70, right: 74+70,top: 17,bottom: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  )),
              onPressed: () {},

            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 210,top: 33),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 77),
                    child: Text("Don't have an account?",
                        style: GoogleFonts.abhayaLibre(
                            color: Colors.blueGrey,
                            fontSize: 17
                        ))),
                TextButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/creat_new_account_screen');

                  }
                  , child: Text("Create one!",
                    style: GoogleFonts.abhayaLibre(
                        color:  Color.fromARGB(2000, 243, 101, 31),
                        fontSize: 17
                    )),

                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // String _emailLatestValue() {
  //   return _emailTextController.text;
  // }

  String _passwordLatestValue() {
    return _passwordTextController.text;
  }
}
