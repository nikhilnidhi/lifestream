import 'package:flutter/material.dart';
import 'package:lifestream/16.dart';

class Five extends StatefulWidget {
  const Five({Key? key}) : super(key: key);

  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  padding: EdgeInsets.only(top: 350.0, left: 10.0, right: 10.0),
  child:
  Column(
      children:  [
  Padding(
  padding: EdgeInsets.all(10.0),
  child: TextField(


    style: TextStyle(

        fontSize: 20,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      //color: Colors.black,
        color: Color(0xffEEA02C)

    ),

    decoration: InputDecoration(
      hintText:"xxx-xxx@gmail.com" ,
      contentPadding: const EdgeInsets.all(15),
      prefixIcon: Icon(Icons.email),

      //labelText: "xxx-xxx@gmail.com",
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)

      ),
    ),
  ),
),
      SizedBox(
        height: 20,
      ),

      Padding(
        padding:EdgeInsets.all(7.0),
        child: TextField(



          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(


            prefixIcon: Icon(Icons.lock),


            hintText: "***********",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)


            ),

          ),
        ),
      ),
      SizedBox(
        height: 60,
      ),
        Padding(
          padding: const EdgeInsets.all(29.0),
          child: MaterialButton(

            minWidth: 300,

            onPressed: () {
              TextButton(
                onPressed: () {},
                child: const Text(
                  '',
                  style: TextStyle(fontSize: 24,color: Colors.pinkAccent),
                ),
              );
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Sixteen()));/// Handle button press
            },

            child: Text('LOGIN',style: TextStyle(fontSize: 25),),



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
        Padding(

          padding: const EdgeInsets.all(2.0),
          child: MaterialButton(

            //minWidth: 0,

            onPressed: () {

             /// Handle button press
            },

            child: Text('forget password?',style: TextStyle(fontSize: 15,color: Colors.pinkAccent),),






            ),
            //padding: const EdgeInsets.all(46.0),
            //padding:EdgeInsets.all(7.0)
          ),


      ]
),
    )
    );
  }
}
