import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/const.dart';
import 'package:pokemon/models/model.dart';

class PokemonNameType extends StatelessWidget {
  final PokemonModel pokoModel;
  const PokemonNameType({Key? key, required this.pokoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(pokoModel.name, style: Const.getPokemonNameTextStyle(),)),
              Text("#${pokoModel.num}", style: Const.getPokemonNameTextStyle(),),

            ],
          ),
          SizedBox(height: 20.r,),
          Chip(label: Text(pokoModel.type.join(' , '), style: Const.getPokemonNameChipStyle(),))
        ],
      ),
    );
  }
}
