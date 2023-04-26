// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'foodmenu.dart';
class Numcount extends StatefulWidget {
  const Numcount({super.key});

  @override
  State<Numcount> createState() => _NumcountState();
}

class _NumcountState extends State<Numcount> {


//กลุ่มข้อมูล

List<FoodMenu> menu = [

FoodMenu("กุ้งเผา", "500" , "assets/images/seber.jpg"),
FoodMenu("กุ้งเผา", "500" , "assets/images/seber.jpg"),
FoodMenu("กุ้งเผา", "500" , "assets/images/seber.jpg"),
FoodMenu("กุ้งเผา", "500" , "assets/images/seber.jpg"),

];
//แสดงผล
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text('เลือกเมนูอาหาร'),
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (BuildContext context, int index) {
          FoodMenu food = menu[index];
        return ListTile(
          leading: Image.asset(food.img),
          title: Text(food.name),
          subtitle: Text("ราคา " + food.price +"บาท"),
          onTap: (){
            print("คุณเลือกเมนูอาหาร = "+ food.name );
          },
        );
      }),
    );
  }

//เตรยมข้อมูล
  // List<Widget> getdata(int count) {
  //   //กลุ่มข้อมูลเก็บwitget ชื่อ data
  //   List<Widget> data = [];

  //   for (var i = 0; i < count; i++) {
  //     var menu = ListTile(
  //       title: Text("เมนูที่ ${i + 1} ", style: TextStyle(
  //         fontSize: 25,
  //       ),),
  //       subtitle: Text("หวัข้อย่อย ${i+1}"),
  //     );
  //     data.add(menu);
  //   }

  //   return data;
  // }
}
