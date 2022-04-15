import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget{

  final String hintText;
  final TextInputType inputType;
  final TextEditingController  controller;
  int? maxLines=1;

  TextInput({Key? key, required this.hintText,required this.inputType,required this.controller,this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: TextField(
        controller: this.controller,
        keyboardType: this.inputType,
        maxLines: this.maxLines,
        style: TextStyle(
          fontSize: 14,
          fontFamily: "Lato",
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFe5e5e5),
          border: InputBorder.none,
          hintText: this.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
            borderRadius: BorderRadius.all(Radius.circular(9))
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFe5e5e5)),
              borderRadius: BorderRadius.all(Radius.circular(9))
          )
        ),
      ),
    );

  }

}