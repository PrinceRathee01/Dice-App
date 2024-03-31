import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee',style: TextStyle(color: Colors.white),),),
          backgroundColor: Colors.red.shade600,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftSideDice=1;
  int RightSideDice=1;
  
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
      children: [
        Expanded(child: TextButton(onPressed: (){
          setState(() {
            LeftSideDice=Random().nextInt(6)+1;
          });
          print('Left Button got pressed');
        },child: Image.asset('images/dice$LeftSideDice.png')),),
        
        Expanded(child: TextButton(onPressed:(){
          setState(() {
            RightSideDice=Random().nextInt(6)+1;
          });
          print('Right Button got pressed');
        },child:  Image.asset('images/dice$RightSideDice.png')),),
      ],
      ),
    );
  }
}
