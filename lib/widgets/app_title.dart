
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/const.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Const.getApptitleWidgetHeight(),
      // color: Colors.red,
      child: Stack(
        children: [
          Align(alignment: Alignment.centerLeft, child: Padding(
            padding: Const.getDefaultPadding(),
            child: Text("Pokedex", style: Const.getTitleTextStyle(),),
          )), 
        Align(alignment: Alignment.centerRight,
          child: Image.asset(
            
            imgPath, 
            width:  ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw,
            // height: 100.w,
            fit: BoxFit.fitWidth,
            ),
        ),
         
        ],
      ),
    );
  }
}
