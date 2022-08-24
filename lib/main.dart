import 'package:flutter/material.dart';

void main()=>runApp(FlutterButtons());


class  FlutterButtons extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(255, 226, 142, 17),
      ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("FlutterButton"),
        
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            //Elevated Button automatically pick colour from them theme 
            /*color: Colors.blue,
            textColor:Colors.white,*/
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.white,
              ),
            child: Text('An Elevated Button'),
            onPressed:(){
              print('Pressed an elevated button');
              }
              ),
            TextButton(
              // The text button those not have background
              child:Text("A Flat button"),
              style: TextButton.styleFrom(
                primary: Colors.orange
              ),
               onPressed: (){
                print("Pressed a Flat button");
               },
               ),
               OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.orange,
                  side: BorderSide(color: Colors.orange)
                ),
                child: Text("An Outline button"),
                
               onPressed: (){
                print("Pressed a Outllne button");
               },
               )
        ],
        ),
      ),   

    )
    );
  }
}