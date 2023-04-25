import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void navigateTo(context,Widget widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinish(context,Widget widget,) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget,),
      (route) {
    return false;
  },
);


Widget svgImage({required String path,double? height,double? width}){
  return SvgPicture.asset(path ,height: height,width: width,fit: BoxFit.cover,);
}

SizedBox verticalSpace(double size) => SizedBox(height: size);

SizedBox horizontalSpace(double size) => SizedBox(width: size);