
import 'package:flutter/material.dart';
import 'package:hrms/core/colors/app_colors.dart';


import 'common_text_view.dart';
class CommonIconButton extends StatelessWidget {
  const CommonIconButton({super.key, required this.icon, required this.onPressed,this.count, this.showcount});
  final Widget icon;
  final Function()? onPressed;
  final int? count;
  final bool? showcount;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed:onPressed,
            // (){
            //   onPressed?.call();
            // } ,
            icon: icon),
        if(showcount==true)...[
          Positioned(
              top: 2,
              right:8,
              child: TextView(text:"$count",
                textStyle:const TextStyle(color: AppColors.black,fontWeight: FontWeight.w600),)
          )],
      ],
    );
  }
}
