import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CreateNewAccountScreen extends StatefulWidget {
  const CreateNewAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewAccountScreen> createState() => _CreateNewAccountScreenState();
}

class _CreateNewAccountScreenState extends State<CreateNewAccountScreen> {
  final _fullNameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _dateTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fullNameTextController.addListener(_fullNameLatestValue);
    _emailTextController.addListener(_emailLatestValue);
    _passwordTextController.addListener(_passwordLatestValue);
    _dateTextController.addListener(_dateLatestValue);

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {Navigator.pop(context);
            },
          color: Color.fromARGB(2000, 18, 25, 36),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 36, left: 16),
            child: Text(
              "Create \nNew Account",
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
                "Please type full information below and we can create your account",
                style: GoogleFonts.abhayaLibre(
                    fontSize: 17, fontWeight: FontWeight.w400)),
          ),
          Column(
            children: [

              TextFormField(
                controller: _emailTextController,
                maxLines: 1,
                enabled: true,
                onChanged: (text) {
                  print("email changed");
                  print(_emailTextController.text);
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  // border: OutlineInputBorder(),
                  hintText: "Type email",

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailTextController,
                maxLines: 1,
                enabled: true,
                onChanged: (text) {
                  print("email changed");
                  print(_emailTextController.text);
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  // border: OutlineInputBorder(),
                  hintText: "Type email",
                ),
              ),
              TextFormField(
                controller: _emailTextController,
                maxLines: 1,
                enabled: true,
                onChanged: (text) {
                  print("email changed");
                  print(_emailTextController.text);
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  // border: OutlineInputBorder(),
                  hintText: "Type email",
                ),
              ),
              TextFormField(
                controller: _emailTextController,
                maxLines: 1,
                enabled: true,
                onChanged: (text) {
                  print("email changed");
                  print(_emailTextController.text);
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  // border: OutlineInputBorder(),
                  hintText: "Type email",
                ),
              ),

              // Expanded(child: ),
              // Expanded(child: ),
              // Expanded(child: ),

            ],
          )
        ],
      ),
    );
  }
  String _fullNameLatestValue() {
    return _emailTextController.text;
  }
  String _emailLatestValue() {
    return _emailTextController.text;
  }
  String _passwordLatestValue() {
    return _emailTextController.text;
  }
  String _dateLatestValue() {
    return _emailTextController.text;
  }

}
