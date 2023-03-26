import 'package:flutter/material.dart';



class BioCard extends StatelessWidget {
  const BioCard({
    Key? key,
    required this.leadingIcon,
    required this.subTitle,
    required this.title,
    required this.trailingIcon,
    required this.marginBottom
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final double marginBottom;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            width: 1,
            color: Colors.blue,
          )
      ),
      margin: EdgeInsets.only(left:30,
          right: 30,
          bottom: marginBottom ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(
              leadingIcon,
              color: Colors.grey.shade600,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ,
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,
                      color: Colors.grey.shade600
                  ),
                )
              ],
            ),
            Spacer(),
            IconButton(
                onPressed: (){},
                icon: Icon(
                    trailingIcon,
                    color: Colors.grey.shade600,
                ),
            )
          ],
        ),
      ),
    );
  }
}