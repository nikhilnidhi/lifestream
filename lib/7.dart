import 'package:flutter/material.dart';
import 'package:lifestream/8.dart';

class Seven extends StatefulWidget {
  const Seven({Key? key}) : super(key: key);

  @override
  State<Seven> createState() => _SevenState();
}

class _SevenState extends State<Seven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Container(
    width: 414,
    height: 896,
    color: Colors.white,
    child: Stack(
      children:[
        Positioned(
          left: 20,
          top: 316,
          child: Container(
            width: 374,
            height: 240,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  width: 374,
                  height: 65,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        width: 374,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xfff8f8f8),
                        ),
                        padding: const EdgeInsets.only(left: 26, right: 19, ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              width: 24,
                              height: 24,
                              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5, ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 20,
                                    height: 16.50,
                                    decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(8),
                                      // border: Border.all(color: Color(0xffff2156), width: 1.50, ),
                                      // color: Color(0x7f7f3a44),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),

                            SizedBox(width: 15),
                            SizedBox(
                              width: 260,
                              height: 28,
                              child: Text(
                                "xxx-xxxx@gmail.com",
                                style: TextStyle(
                                  color: Color(0xff272a2f),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 115),
                Container(
                  width: 374,
                  height: 60,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Container(
                        width: 374,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffff2156),
                        ),
                        padding: const EdgeInsets.only(top: 13, bottom: 14,right: 130 ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            SizedBox(
                              width: 136,
                              height: 33,


                            ),
                            MaterialButton(

                              //minWidth: 0,

                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Eight()));
                                /// Handle button press
                              },

                              child: Text(
                                "SEND",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),





                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 374,
              height: 56,
              child: Text(
                "Your password reset will be send in your registered email address.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff7e7e7e),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  )
  ,
),
    );
  }
}
