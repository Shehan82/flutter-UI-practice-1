import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentState = 1;
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

  var trans = [
    {
      "name": "Uber Rider",
      "cardExpired": "2022/02/05",
      "price": "\$322.453",
    },
    {
      "name": "Nike Outlet",
      "cardExpired": "2026/02/09",
      "price": "-\$231.764",
    },
    {
      "name": "Ebay",
      "cardExpired": "2026/06/09",
      "price": "\$29.43",
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
              margin: EdgeInsets.only(right: 20, left: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Operations",
                    style: GoogleFonts.inter(
                        fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.indigo[700]),
                              shape: BoxShape.circle,
                              color: currentState == 1
                                  ? Colors.indigo[700]
                                  : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.indigo[700]),
                              shape: BoxShape.circle,
                              color: currentState == 2
                                  ? Colors.indigo[700]
                                  : Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.indigo[700]),
                              shape: BoxShape.circle,
                              color: currentState == 3
                                  ? Colors.indigo[700]
                                  : Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              // decoration: BoxDecoration(color: Colors.black),
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentState = 1;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: currentState == 1
                              ? Colors.indigo[700]
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.transfer_within_a_station,
                            size: 50,
                            color: currentState == 1
                                ? Colors.white
                                : Colors.indigo[700],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Money",
                            style: GoogleFonts.inter(
                                color: currentState == 1
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Transfer",
                            style: GoogleFonts.inter(
                                color: currentState == 1
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentState = 2;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: currentState == 2
                              ? Colors.indigo[700]
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.monetization_on,
                            size: 50,
                            color: currentState == 2
                                ? Colors.white
                                : Colors.indigo[700],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Bank",
                            style: GoogleFonts.inter(
                                color: currentState == 2
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Withdraw",
                            style: GoogleFonts.inter(
                                color: currentState == 2
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentState = 3;
                      });
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: currentState == 3
                              ? Colors.indigo[700]
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 50,
                            color: currentState == 3
                                ? Colors.white
                                : Colors.indigo[700],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Insight",
                            style: GoogleFonts.inter(
                                color: currentState == 3
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Tracking",
                            style: GoogleFonts.inter(
                                color: currentState == 3
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 10),
              child: Text(
                "Transaction Histories",
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: trans.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                    padding: EdgeInsets.only(right: 20, left: 20),
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(8, 8),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(trans[index]["cardExpired"],
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.grey)),
                        Text(trans[index]["name"],
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.black)),
                        Text(trans[index]["price"],
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.indigo[700]))
                      ],
                    ),
                  );
                }),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
