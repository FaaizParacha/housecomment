/*
* File : Edit Profile
* Version : 1.0.0
* */

import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:housecomment/Screens/Auth/login.dart';
import 'package:housecomment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:housecomment/app_theme.dart';

import '../../Payment/payment_method.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool _passwordVisible = false;
  late ThemeData themeData;
  bool status1 = false;
  bool status2 =false;
  Widget build(BuildContext context) {
    MySize().init(context);
    themeData = Theme.of(context);

    return Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  MdiIcons.chevronLeft,
                  color: themeData.colorScheme.onBackground,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MySize.size24!),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: MySize.size16!),
                        width: MySize.getScaledSizeHeight(140),
                        height: MySize.getScaledSizeHeight(140),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "./assets/Images/profile.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Positioned(
                        bottom: MySize.size12,
                        right: MySize.size8,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: themeData.scaffoldBackgroundColor,
                                width: 2,
                                style: BorderStyle.solid),
                            color: themeData.colorScheme.primary,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(MySize.size6!),
                            child: Icon(
                              MdiIcons.pencil,
                              size: MySize.size20,
                              color: themeData.colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text("Marcelina Willis",
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.headline6,
                          fontWeight: 600,
                          letterSpacing: 0)),
                  Text("UI Designer",
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.subtitle2,
                          fontWeight: 500)),
                ],
              ),
            ),
            Container(
              padding:
              EdgeInsets.only(top: MySize.size36!,
                  left: MySize.size24!,
                  right: MySize.size24!),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: MySize.size16!),
                    child: TextFormField(
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.bodyText1,
                          letterSpacing: 0.1,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 500),
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: AppTheme.getTextStyle(
                            themeData.textTheme.subtitle2,
                            letterSpacing: 0.1,
                            color: themeData.colorScheme.onBackground,
                            fontWeight: 500),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: themeData.colorScheme.background,
                        prefixIcon: Icon(
                          MdiIcons.accountOutline,
                        ),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      controller:
                      TextEditingController(text: "Marcelina Willis"),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MySize.size16!),
                    child: TextFormField(
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.bodyText1,
                          letterSpacing: 0.1,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 500),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: AppTheme.getTextStyle(
                            themeData.textTheme.subtitle2,
                            letterSpacing: 0.1,
                            color: themeData.colorScheme.onBackground,
                            fontWeight: 500),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: themeData.colorScheme.background,
                        prefixIcon: Icon(
                          MdiIcons.emailOutline,
                        ),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      controller:
                      TextEditingController(text: "nat@gmail.com"),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MySize.size16!),
                    child: TextFormField(
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.bodyText1,
                          letterSpacing: 0.1,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 500),
                      decoration: InputDecoration(
                        hintText: "Phone",
                        hintStyle: AppTheme.getTextStyle(
                            themeData.textTheme.subtitle2,
                            letterSpacing: 0.1,
                            color: themeData.colorScheme.onBackground,
                            fontWeight: 500),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: themeData.colorScheme.background,
                        prefixIcon: Icon(
                          MdiIcons.phoneOutline,
                        ),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.sentences,
                      controller:
                      TextEditingController(text: "091-987456321"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MySize.size16!),
                    child: TextFormField(
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.bodyText1,
                          letterSpacing: 0.1,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 500),
                      decoration: InputDecoration(
                        hintText: "Change Password",
                        hintStyle: AppTheme.getTextStyle(
                            themeData.textTheme.subtitle2,
                            letterSpacing: 0.1,
                            color: themeData.colorScheme.onBackground,
                            fontWeight: 500),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: themeData.colorScheme.background,
                        prefixIcon: Icon(
                          MdiIcons.lockOutline,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? MdiIcons.eyeOutline
                                : MdiIcons.eyeOffOutline,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      textCapitalization: TextCapitalization.sentences,
                      obscureText: _passwordVisible,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MySize.size16!),
                    child: Row(
                      children: [
                        CupertinoSwitch(
                          value: status1,
                          onChanged: (val) {
                            setState(() {
                              status1 = val;
                            });
                          },),
                        Text("Comments Private",style: AppTheme.getTextStyle(
                            themeData.textTheme.bodyLarge,
                            fontWeight: 600,
                            color: themeData.colorScheme.onBackground,
                            letterSpacing: 0.3)),
                      ],),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MySize.size16!),
                    child: Row(
                      children: [
                        CupertinoSwitch(
                          value: status2,
                          onChanged: (val) {
                            setState(() {
                              status2 = val;
                            });
                          },),
                        Text("Push notify new comme",
                            style: AppTheme.getTextStyle(
                            themeData.textTheme.bodyLarge,
                            fontWeight: 600,
                            color: themeData.colorScheme.onBackground,
                            letterSpacing: 0.3)),
                      ],),
                  ),
                  Padding(padding: EdgeInsets.only(top: MySize.size16!),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    InkWell(
                      child: Text("Payment Screen",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.bodyLarge,
                              fontWeight: 600,
                              decoration: TextDecoration.underline,
                              color: themeData.colorScheme.primary,
                              letterSpacing: 0.3)),
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>  PaymentMethod()));
                      },
                    ),
                    InkWell(
                      child: Text("Log out",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.bodyLarge,
                              fontWeight: 600,
                              decoration: TextDecoration.underline,
                              color: themeData.colorScheme.primary,
                              letterSpacing: 0.3)),
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>  LoginScreen()));
                      },
                    ),
                  ],)
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MySize.size24!),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(MySize.size8!)),
                      boxShadow: [
                        BoxShadow(
                          color:
                          themeData.colorScheme.primary.withAlpha(20),
                          blurRadius: 3,
                          offset:
                          Offset(0, 1),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                Spacing.xy(16, 0))
                        ),
                        onPressed: () {},
                        child: Text("UPDATE",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.button,
                                fontWeight: 600,
                                color: themeData.colorScheme.onPrimary,
                                letterSpacing: 0.3))),
                  ),
                ],
              ),
            ),
          ],
        )
    );

  }

}