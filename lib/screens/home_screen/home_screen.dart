import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_chatbot_fe/screens/home_screen/widgets/custom_app_bar.dart';
import 'package:whatsapp_chatbot_fe/screens/home_screen/widgets/lets_chat_button.dart';
import 'package:whatsapp_chatbot_fe/utils/extensions/widget_extensions.dart';
import 'package:whatsapp_chatbot_fe/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.pureWhite,
        onPressed: () {},
        elevation: 1,
        child: Image.asset(
          'assets/logo.png',
          height: 40.w,
          width: 40.w,
        ),
      ),
      appBar: customAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hi!\n I am GovQuery",
            style: Constants.mainHeadTextStyle,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let\’s talk about things that matter to you!',
                style: Constants.subHeadTextStyle,
              ).paddingForOnly(top: 30.w),
              Text(
                'GovQuery is an Artificial Intelligence-powered chatbot,The chatbot could help students who are seeking government jobs because the data around these jobs are scattered in different sites and different website or the data they get from the coaching centers magazines.',
                style: Constants.contextTextStyle,
              ).paddingForOnly(top: 15.w),
              LetsChatOnWhatsApp().paddingForOnly(top: 100.w).asButton(),
            ],
          )
        ],
      ).paddingWithSymmetry(horizontal: 16.w, vertical: 8.w).wrapCenter(),
    );
  }
}
