import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/const.dart';
import 'package:pokemon/models/model.dart';
import 'package:pokemon/widgets/poke_info.dart';
import 'package:pokemon/widgets/pokemon_name_type.dart';

class Detail extends StatelessWidget {
  final PokemonModel pokoModel;

 const Detail({Key? key, required this.pokoModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitMode(context)
        : _buildLandscapeMode(context);
    
  }

  Scaffold _buildPortraitMode(BuildContext context) {
    return Scaffold(
      backgroundColor: Const.getColorFromType(pokoModel.type[0]),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: Const.getDefaultPadding(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 0.03.sh,
                ),
              ),
            ),
            PokemonNameType(pokoModel: pokoModel),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/pokeball.png",
                      height: 0.17.sh,
                    ),
                  ),
                  Positioned(
                      top: 0.15.sh,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: PokeInfo(pokoModel: pokoModel)),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Hero(
                        tag: pokoModel.id,
                        child: CachedNetworkImage(
                          imageUrl: pokoModel.img,
                          height: 0.25.sh,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

Scaffold _buildLandscapeMode(BuildContext context) {
    return Scaffold(
      backgroundColor: Const.getColorFromType(pokoModel.type[0]),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: Const.getDefaultPadding(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 0.03.sw,
                ),
              ),
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      PokemonNameType(pokoModel: pokoModel),
                      SizedBox(height: 0.10.sh,),
                
                Center(
                  child: Hero(
                                tag: pokoModel.id ,
                                child: CachedNetworkImage(
                                  imageUrl: pokoModel.img,
                                  height: 0.35.sh,
                                ),
                              ),
                )
                
                    ],
                  ),

                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: Const.getDefaultPadding(),
                    child: SizedBox(
                      height: 0.38.sw,
                      child: PokeInfo(pokoModel: pokoModel)),
                  ))
              ],
            ),
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
          ],
        ),
      ),
    );
  }

}
