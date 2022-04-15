import 'package:flutter/material.dart';
class TextInputLocation extends StatelessWidget{

  final String hintText;
  final TextEditingController  controller;
  final IconData iconData;
  TextInputLocation({required this.hintText,required this.controller,required this.iconData});

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        ),
        child: TextField(
        controller: controller,
        style: const TextStyle(
          fontSize: 14,
          fontFamily: "Lato",
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(iconData),
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(12))
            )
          ),
        ),
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0.0,7.0)
            )
          ]
        ),
    );
  }
  
}