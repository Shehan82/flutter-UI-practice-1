import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var card = [
    {
      "name": "Shehan Sandeepa",
      "cardNumber": "**** **** ***** **215",
      "cardExpired": "2022/02/05",
      "cardBackground": Colors.indigo[700],
    },
    {
      "name": "Shashini anushka",
      "cardNumber": "**** **** ***** **786",
      "cardExpired": "2026/02/09",
      "cardBackground": Colors.teal[300],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => {print("drawer tapped")},
                    child: Icon(
                      Icons.view_headline_outlined,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/images/tt.jpg'))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 19, left: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning!",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]),
                  ),
                  Text(
                    "Shehan Sandeepa",
                    style: GoogleFonts.inter(
                        fontSize: 30, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Container(
              child: ListView.builder(itemBuilder: itemBuilder),
            )
          ],
        ),
      ),
    );
  }
}
