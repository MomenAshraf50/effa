import 'package:effa/core/utils/resources/constants_manager.dart';
import 'package:effa/core/utils/resources/country_model.dart';
import 'package:effa/core/utils/resources/extensions_manager.dart';
import 'package:effa/core/utils/widgets/default_text.dart';
import 'package:flutter/material.dart';

class DropDownItemBuilder extends StatelessWidget {
   DropDownItemBuilder({Key? key,required this.countryModel}) : super(key: key);

  CountryModel countryModel;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          Image.asset(countryModel.flagUri,width: 8.w,height: 4.h,),
          horizontalSpace(2.w),
          DefaultText(
            fontSize: 20.rSp, text: countryModel.name, fontWeight: FontWeight.normal,
          ),
        ],
      ),
    );
  }
}
