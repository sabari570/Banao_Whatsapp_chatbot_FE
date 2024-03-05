import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_chatbot_fe/utils/colors.dart';
import 'package:whatsapp_chatbot_fe/utils/constants.dart';
import 'package:whatsapp_chatbot_fe/utils/extensions/widget_extensions.dart';

class LetsChatOnWhatsApp extends StatelessWidget {
  const LetsChatOnWhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Container(
          height: 40.w,
          decoration: BoxDecoration(
            color: CustomColors.pureWhite,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'LET\'S CHAT ON WHATSAPP',
              style: Constants.subHeadTextStyle.copyWith(fontSize: 21.sp),
            ).paddingForOnly(right: 30.w),
          ),
        ),
        Positioned(
          child: CircleAvatar(
            radius: 30.r,
            backgroundColor: CustomColors.bgColor,
            child: Icon(
              FontAwesomeIcons.whatsapp,
              color: CustomColors.whatsappGreen,
              size: 50.sp,
            ),
          ),
        ),
      ],
    ).paddingWithSymmetry(vertical: 10.w, horizontal: 16.w);
  }
}
