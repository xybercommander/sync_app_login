import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

Widget textFieldLoginInput(String label) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    width: ScreenUtil().setWidth(296),
    height: ScreenUtil().setHeight(52),                      
    decoration: BoxDecoration(                        
      border: Border.all(width: 1, color: Colors.black),
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextFormField(                            
      decoration: InputDecoration(
        hintText: "$label",
        hintStyle: TextStyle(color: Colors.black, fontFamily: "Quicksand", fontSize: ScreenUtil().setSp(16)),
        border: InputBorder.none,                              
      ),
      style: TextStyle(color: Colors.black, fontFamily: "Quicksand",  fontSize: ScreenUtil().setSp(16)),
    ),
  );
}