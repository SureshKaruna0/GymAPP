import 'package:flutter/material.dart';
import 'package:gymapp/common/app_colors.dart';
import 'package:gymapp/common/app_font_size.dart';
import 'package:gymapp/common/sizeconfig_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Center(
        child: Text('GymApp'),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.lightBlue2,
      foregroundColor: AppColors.white,
      elevation: 0,
      toolbarHeight: 100,
      title: Text(
        'Welcome',
        style: AppTextStyle.outfitTextStyle(
          fontSize: 19,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          shadows: [
            const Shadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              color: Color(0x40000000),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.05),
          child: Image.asset(
            'assets/png/notification_icon.png',
            color: AppColors.white,
            width: 22,
          ),
        ),
      ],
    );
  }
}
