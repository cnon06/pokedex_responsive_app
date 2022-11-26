import 'package:flutter/material.dart';
import 'package:pokemon/const.dart';
import 'package:pokemon/models/model.dart';

class PokeInfo extends StatelessWidget {
  final PokemonModel pokoModel;
  const PokeInfo({Key? key, required this.pokoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )
          
          ),
          child: Padding(
            padding: Const.getDefaultPadding(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buiildInfoRow(label: "Name", data: pokoModel.name),
                 _buiildInfoRow(label: "Height", data: pokoModel.height),
                  _buiildInfoRow(label: "Weight", data: pokoModel.weight),
                  _buiildInfoRow(label: "Spawn Time", data: pokoModel.spawnTime),
                  _buiildInfoRow(label: "Weaknesses", data: pokoModel.weaknesses.join(' , ')),
                  _buiildInfoRow(label: "Pre Evolution", data: pokoModel.prevEvolution.join(' , ')),
                  _buiildInfoRow(label: "Next Evolution", data: pokoModel.nextEvolution.join(' , ')),
              ],
            ),
          ),
    );
  
  }

  Row _buiildInfoRow({required String label,  required String data}) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label, style:  Const.gePokeInfotLabelTextStyle(),),
                Text(data, style:  Const.gePokeInfoDataTextStyle(),)
                // AutoSizeText(
                //   data,
                //   style: Const.gePokeInfoDataTextStyle(),
                //   overflowReplacement: Text(data, style:  Const.gePokeInfoDataTextStyle(),),
                // )
              ],
            );
  }
}
