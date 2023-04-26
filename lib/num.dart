// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'moneybox.dart';

class num extends StatefulWidget {
  const num({super.key});

  @override
  State<num> createState() => _numState();
}

class _numState extends State<num> {
int x = 10;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('เรียนใช้งาน init ');
  }
  @override
  Widget build(BuildContext context) {
        print('เรียนใช้งาน bulid ');
    return Scaffold(
      appBar: AppBar(
        title: Text('บัญชีของฉัน'),
      ),
      body: Column(children: [
        Text(x.toString() )
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            x++;
          });
      } ,
      child: Icon(Icons.add)
      ),
      
    );
  }
}
