import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_chatbot_fe/utils/utils.dart';

AppBar customAppBar() => AppBar(
      // leading: Icon(Icons.menu),
      title: Text(
        'GovQuery',
        style: Constants.subHeadTextStyle,
      ),
      centerTitle: true,
      backgroundColor: CustomColors.pureWhite,
      elevation: 0,
      toolbarHeight: 48.w,
    );
