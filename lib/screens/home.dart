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
      "topColor": Colors.pink
    },
    {
      "name": "Shashini anushka",
      "cardNumber": "**** **** ***** **786",
      "cardExpired": "2026/02/09",
      "cardBackground": Colors.teal[300],
      "topColor": Colors.indigo[700]
    },
    {
      "name": "Kasun rashmika",
      "cardNumber": "**** **** ***** **345",
      "cardExpired": "2026/06/09",
      "cardBackground": Colors.pink,
      "topColor": Colors.teal[300],
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
            SizedBox(
              height: 15,
            ),
            Container(
              height: 199,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  itemCount: card.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 340,
                      height: 180,
                      decoration: BoxDecoration(
                          color: card[index]["cardBackground"],
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                              child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: card[index]["topColor"],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(80),
                                  // bottomLeft: Radius.circular(100)
                                )),
                          )),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                    color: card[index]["topColor"],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(120),
                                      bottomRight: Radius.circular(20),
                                      // bottomLeft: Radius.circular(100)
                                    )),
                              )),
                          Positioned(
                              top: 20,
                              left: 240,
                              child: Container(
                                width: 60,
                                height: 30,
                                child: Image.asset('assets/images/qq.png'),
                              )),
                          Positioned(
                            top: 40,
                            left: 30,
                            child: Text(
                              "CARD NUMBER",
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Positioned(
                            top: 60,
                            left: 30,
                            child: Text(
                              card[index]["cardNumber"],
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Positioned(
                            top: 130,
                            left: 30,
                            child: Text(
                              "CARD HOLDERNAME",
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Positioned(
                            top: 150,
                            left: 30,
                            child: Text(
                              card[index]["name"],
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Positioned(
                            top: 130,
                            left: 210,
                            child: Text(
                              "EXPIRY DATE",
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Positioned(
                            top: 150,
                            left: 210,
                            child: Text(
                              card[index]["cardExpired"],
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.only(right: 15, left: 15, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Operations"),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
