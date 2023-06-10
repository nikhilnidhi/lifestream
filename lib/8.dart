import 'package:flutter/material.dart';
import 'package:lifestream/9.dart';

class Eight extends StatefulWidget {
  const Eight({Key? key}) : super(key: key);

  @override
  State<Eight> createState() => _EightState();
}

class _EightState extends State<Eight> {
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
                  top: 496,
                  child: Container(
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
                          padding: const EdgeInsets.only(top: 13, bottom: 14, ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              SizedBox(
                                width: 136,
                                height: 33,
                          ),
                                MaterialButton(onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Nine()));
                                },
                                   child:Padding(

                                     padding: const EdgeInsets.only(right: 120),
                                     child: Text(


                                  "Verify",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                  ),
                                ),
                                   ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 49,
                  top: 341,
                  child: Container(
                    width: 317,
                    height: 65,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xfff8f8f8),
                          ),
                        ),
                        SizedBox(width: 19),
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xfff8f8f8),
                          ),
                        ),
                        SizedBox(width: 19),
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xfff8f8f8),
                          ),
                        ),
                        SizedBox(width: 19),
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xfff8f8f8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 57,
                  top: 343,
                  child: SizedBox(
                    width: 48,
                    height: 66,
                    child: Text(
                      "6",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff272a2f),
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 141,
                  top: 343,
                  child: SizedBox(
                    width: 48,
                    height: 66,
                    child: Text(
                      "8",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff272a2f),
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  left: 140,
                  top: 431,
                  child: SizedBox(
                    width: 237,
                    height: 29,
                    child: Text(
                      "Resend Code 49 Sec",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xffff2156),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )

      ),
    );
  }
}
