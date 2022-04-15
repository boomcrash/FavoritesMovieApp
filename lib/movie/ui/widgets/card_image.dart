
import 'package:favoritesmovieapp/movie/ui/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget{
  final double height=350;
  final double width=350;
  double left=350;
  final String imagen;
  final VoidCallback? onPressFabIcon;
  final IconData iconData;

  CardImage({Key? key, required this.imagen,required width,required height, this.onPressFabIcon,required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final card =Container(
      height: 200,
      width: 370,
      margin: const EdgeInsets.only(
        left: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagen),
          fit: BoxFit.cover,
        ),borderRadius: const BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0,7)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(-0.9,1.02),
      children: [
        card,
        FloatingActionButtonGreen(iconData: iconData)
      ],
    );
  }

}