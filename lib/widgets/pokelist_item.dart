import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/const.dart';
import 'package:pokemon/models/model.dart';
import 'package:pokemon/pages/detail.dart';
import 'package:pokemon/widgets/poke_image_and_balls.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokoModel;

  const PokeListItem({Key? key, required this.pokoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(pokoModel: pokoModel,)));
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.white,
        color: Const.getColorFromType(pokoModel.type[0].toString()),
        child: Padding(
          padding: Const.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokoModel.name,
                style: Const.getPokemonNameTextStyle(),
              ),
              Chip(
                  label: Text(
                pokoModel.type[0].toString(),
                style: Const.getPokemonNameChipStyle(),
              )),
              Expanded(
                  child: PokeImageAndBall(
                pokoModel: pokoModel,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
