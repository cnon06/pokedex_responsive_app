import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/const.dart';


import '../models/model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokoModel;
  const PokeImageAndBall({Key? key, required this.pokoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Stack(
        children: [
          Image.asset(
            
            "assets/images/pokeball.png", 
            width: Const.calculatePokeImgAndBallSize(), 
            height: Const.calculatePokeImgAndBallSize(),fit: BoxFit.fitHeight,
         
          ),
          Hero(
            tag: pokoModel.id,
            child: CachedNetworkImage(imageUrl: pokoModel.img,
            width: Const.calculatePokeImgAndBallSize(),
            height: Const.calculatePokeImgAndBallSize(),
            errorWidget: (context,url, error) => const Icon(Icons.error),
            fit: BoxFit.fitHeight,
            placeholder: (context,url) => const CircularProgressIndicator(color: Colors.red,),
            ),
          ),

          ],
      ),
    );
  }
}
