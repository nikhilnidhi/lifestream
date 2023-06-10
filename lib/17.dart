import 'package:flutter/material.dart';
import 'package:lifestream/18.dart';
class Seventeen extends StatefulWidget {
  const Seventeen({Key? key}) : super(key: key);

  @override
  State<Seventeen> createState() => _SeventeenState();
}

class _SeventeenState extends State<Seventeen> {
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
              hintText:"StaffId" ,
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


              hintText: "Password",
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
                  MaterialPageRoute(builder: (context) => Eighteen()));/// Handle button press
            },

            child: Text('LOG IN',style: TextStyle(fontSize: 25,color: Colors.pinkAccent,),),



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

      ]
  ),




),
    );
  }
}
