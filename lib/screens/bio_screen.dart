import 'package:flutter/material.dart';
import 'package:vp_bioo_app/widgets/bio_card.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
         centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: const Text("BIO"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1C3879),
              Color(0xFF607EAA)
            ],
          ),
        ),
        child: Column(// هيخرب لانه الكونتينر هياخد حجم ابنه و اللي هو بالعرض صفر
         mainAxisAlignment: MainAxisAlignment.center,
          children: const [
           CircleAvatar(
             radius: 40,
             backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/831/88/png-transparent-user-profile-computer-icons-user-interface-mystique-miscellaneous-user-interface-design-smile-thumbnail.png"),
           ),
           SizedBox(height:10),
           Text(
             "User Name" ,
             style: TextStyle(
                fontFamily: "EduNSW",
                fontWeight: FontWeight.bold,
             ),
           ),

            Text(
              "Vision - plus" ,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            ),
          // SizedBox(height: 50),
          Divider(
            thickness: 2,
              indent: 30,
              endIndent: 30,
              color: Colors.white60,
              height: 50// هنا لو اعطيته 50 هيقسمها ع 2 ف 25 فوق و 25 تحت
          ),
          BioCard(
            leadingIcon: Icons.email,
            title: "Email",
            subTitle: "email@app.com",
            trailingIcon: Icons.send,
            marginBottom: 10,
          ),
          BioCard(
            leadingIcon: Icons.phone,
            title: "Mobile",
            subTitle: "970-599-1234-567",
            trailingIcon: Icons.call,
            marginBottom: 10,
          ),
          // BioCard(
          //   leadingIcon: Icons.email,
          //   title: "Email",
          //   subTitle: "email@app.com",
          //   trailingIcon: Icons.send,
          //   marginBottom: 10,
          // ),

          ],
        ),
      ),
    );
  }
}


