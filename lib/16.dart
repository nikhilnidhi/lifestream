import 'package:flutter/material.dart';
import 'package:lifestream/17.dart';
class Sixteen extends StatefulWidget {
  const Sixteen({Key? key}) : super(key: key);

  @override
  State<Sixteen> createState() => _SixteenState();
}

class _SixteenState extends State<Sixteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 250.0, left: 10.0, right: 10.0),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              SizedBox(
                height: 120,
              ),

              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.all(29.0),
                child: MaterialButton(

                  minWidth: 310,

                  onPressed: () {
                    // Handle button press

                  },

                  child: Text('PATIENT LOGIN',style: TextStyle(fontSize: 25 ,),
                  ),




                  textColor: Colors.pinkAccent,
                  color: Colors.white70,

                  padding: EdgeInsets.all(15.0),
                  //contentPadding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(58.0),
                  ),
                  //padding: const EdgeInsets.all(46.0),
                  //padding:EdgeInsets.all(7.0)
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(29.0),
                child: MaterialButton(
                  minWidth: 300,

                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Seventeen())); // Handle button press
                  },


                  child: Text('HOSPITAL LOGIN', style: TextStyle(fontSize: 25, ),
                  ),



                  textColor: Colors.pinkAccent,
                  color: Colors.white70,


                  padding: EdgeInsets.all(15.0),

                  //contentPadding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(58.0),
                  ),
                  //padding: const EdgeInsets.all(46.0),
                  //padding:EdgeInsets.all(7.0)
                ),
              ),
              SizedBox(
                height: 1,
              ),


            ],

          ),



        )

      );

  }
}
