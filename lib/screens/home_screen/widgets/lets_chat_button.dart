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
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: CustomColors.pureWhite,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'LET\'S CHAT ON WHATSAPP',
                style: Constants.letsChatOnWhatsappTextStyle,
              ).paddingForOnly(left: 25.w),
            ),
          ),
        ),
        Positioned(
          child: CircleAvatar(
            radius: 25,
            backgroundColor: CustomColors.bgColor,
            child: Image.asset("assets/images/whatsapp_icon.png"),
          ),
        ),
      ],
    ).paddingForOnly(
      top: 10.h,
      right: 30.w,
      bottom: 10.h,
    );
  }
}
