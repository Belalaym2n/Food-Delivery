import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

textInpudField(String hint,Icon icon ,bool text){
  return Container(
    padding: EdgeInsets.all(10),
    child: TextFormField(
      style: TextStyle(
          fontSize: 20
      ),

      obscureText:text ,

      decoration: InputDecoration(



        hintText: hint,
        prefixIcon: icon,
        hintStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,

        ),

      ),
    ),
  );

}