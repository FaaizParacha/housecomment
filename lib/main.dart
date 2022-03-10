
import 'package:flutter/material.dart';
import 'package:housecomment/app_theme.dart';
import 'Screens/Auth/onboard_updated.dart';

void main() => runApp(
    HouseCommentApp()
);

class HouseCommentApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'House Comment',
      theme: AppTheme.getThemeFromThemeMode(),
      home: OnBoardScreenUpdated(),
    );
  }
}