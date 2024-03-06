import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_chatbot_fe/screens/home_screen/widgets/govquery_home_bot.dart';
import 'package:whatsapp_chatbot_fe/screens/home_screen/widgets/lets_chat_button.dart';
import 'package:whatsapp_chatbot_fe/utils/extensions/widget_extensions.dart';
import 'package:whatsapp_chatbot_fe/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final whatsappUri = Uri.parse('http://wa.me/15550862566');
    return Scaffold(
      backgroundColor: CustomColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            const HomeScreenBot(),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Welcome to GovQuery",
              style: Constants.chatBotIntroduction,
            ),
            Text(
              'Let\'s talk about things that matter to you!',
              style: Constants.subHeadTextStyle,
            ).paddingForOnly(top: 10.h),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Container(
                  height: 5,
                  width: 100.w * _animation.value,
                  color: CustomColors.lineColor,
                ).paddingForOnly(top: 5.h);
              },
            ),
            Text(
              'GovQuery is an Artificial Intelligence-powered chatbot,The chatbot could help students who are seeking government jobs because the data around these jobs are scattered in different sites and different website or the data they get from the coaching centers magazines.',
              style: Constants.contextTextStyle,
            ).paddingForOnly(top: 10.h),
            const LetsChatOnWhatsApp()
                .asStaticButton(
                  onTap: () => launchUrl(whatsappUri),
                )
                .paddingForOnly(top: 20.h),
          ],
        ).paddingWithSymmetry(
          horizontal: 16.w,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.pureWhite,
        onPressed: () {},
        child: Image.asset(
          'assets/logo.png',
          height: 40.w,
          width: 40.w,
        ),
      ).paddingForOnly(bottom: 10.h),
    );
  }
}
