import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class own_pizaa extends StatefulWidget {
  const own_pizaa({super.key});

  @override
  State<own_pizaa> createState() => _own_pizaaState();
}

class _own_pizaaState extends State<own_pizaa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children:[ 
              Container(
              //width: MediaQuery.of(context).size.width,
              width: 375,
              height: 204,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/own_pizza/BG.png")), 
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 52),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:16),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: Image(image: AssetImage("assets/images/own_pizza/Back.png")),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          Text('Step 1',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Color(0xff24262F)),),
                          Text('/2' , style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Color(0xff8E92A0))),
                        ]
                      )
                    )
                  ],
                  
                ),
              ),
            ),
              Padding(
                padding: EdgeInsets.only(left: 15,top: 154),
                child: Column(
                  children: [
                    Text('Create Your Own Pizza',style: TextStyle(color: Color(0xff24262F),fontSize: 24,fontWeight: FontWeight.bold),),
                    Text('Create your own pizza by choosing a crust, sauce and ',style: TextStyle(color: Color(0xff8E91A0),fontSize: 14),),
                    Text('toppings! Select from three crust sizes & thincknesses,',style: TextStyle(color: Color(0xff8E91A0),fontSize: 14),),
                    Text('choice of sauce over 10 individual toppings',style: TextStyle(color: Color(0xff8E91A0),fontSize: 14),),
                    
                  ],
                ),
              )
            ]
          )
        ],
      ),
    );
  }
}