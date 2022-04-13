import 'package:flutter/material.dart';

class ButtonRounded extends  StatefulWidget{
  double width=0,height=0;
  final String text;
  final VoidCallback onPressed;
  ButtonRounded({required this.text,required this.onPressed,this.height=0,this.width=0});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ButtonRounded();
  }

}
class _ButtonRounded extends State<ButtonRounded>{
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20
        ),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple, width: 4.0),
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                  colors: [
                  Colors.black,//arriba
                  Colors.black26//bajo
              ],
              begin: FractionalOffset(1, 0.1),
              end: FractionalOffset(1.0, 1),
              stops: [0.0, 1],
              tileMode: TileMode.clamp
              ) // LinearGradient
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/gmail.png'),
              SizedBox(width: 20),
              Text(widget.text,style: const TextStyle(
                  fontSize: 18,
                  fontFamily: "Lato",
                  color: Colors.white
              ),
              ),
            ],
          ),
        ),// BoxDecoration
      ),
    );
  }

}