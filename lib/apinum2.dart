// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class moneybox2 extends StatelessWidget {

String title;
double amount;
Color color;
double size;



moneybox2(this.title , this.amount, this.color,this.size);

// สร่างต้นแบบ
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              '${NumberFormat("#,###.##").format(amount)}',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
