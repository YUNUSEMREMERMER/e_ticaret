import 'package:flutter/material.dart';

Label(String text){
  return Container(
          padding: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            color: Color(0xFFE0ECF8),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF1F53E4), fontSize: 12.0),
          ),
        );
}