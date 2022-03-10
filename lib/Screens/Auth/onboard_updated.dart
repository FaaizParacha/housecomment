/*
* File : Forgot Password
* Version : 1.0.0
* */

import 'dart:io';

import 'package:flutter_svg/svg.dart';
import 'package:housecomment/Screens/Properties/properties_list.dart';
import 'package:housecomment/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../app_theme.dart';


class OnBoardScreenUpdated extends StatefulWidget {
  @override
  _OnBoardScreenUpdatedState createState() => _OnBoardScreenUpdatedState();
}

class _OnBoardScreenUpdatedState extends State<OnBoardScreenUpdated> {
  PickedFile? imageFile= null;
  late ThemeData themeData;
  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera ,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
  Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title:  Text("Choose option",style: TextStyle(
            color:  themeData.colorScheme.onBackground),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Divider(height: 1,color: Colors.black),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: Text("Gallery"),
                leading: Icon(Icons.account_box,color: themeData
                    .colorScheme.primary,),
              ),

              Divider(height: 1,color:  themeData
                  .colorScheme.onBackground),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: Text("Camera"),
                leading: Icon(Icons.camera,color: themeData
                    .colorScheme.primary),
              ),
            ],
          ),
        ),);
    });
  }
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          color: themeData.backgroundColor,
          child: Stack(
            children: <Widget>[
              ClipPath(
                  clipper: _MyCustomClipper(context),
                  child: Container(
                    alignment: Alignment.center,
                    color: themeData.colorScheme.background,
                  )),
              Positioned(
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.09,
                left: 5,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "./assets/Icons/house-comment-active.svg",
                      height: size.height * 0.1,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: MySize.size8!),
                      child: Text(
                        "WELCOME",
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.headline6,
                            fontWeight: 600),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height /2,
                child: Center(
                  child: ( imageFile==null)?CircleAvatar(
                    radius: 48,
                    backgroundColor: Colors.black,
                    child: GestureDetector(
                      onTap: (){_showChoiceDialog(context);},
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor : themeData
                            .colorScheme.background ,
                        child: Icon(Icons.person,size: 45,color:  themeData
                          .colorScheme.onBackground),
                      ),
                    )
                  ):Container(
                    height: MySize.screenHeight/4,
                      width: MySize.screenWidth/4,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image : DecorationImage(
                            fit: BoxFit.fill,
                          image : FileImage(File(  imageFile!.path),)
                  ))
                    //child: Image.file( File(  imageFile!.path)),
                  )
                ),
              ),
              Positioned(
                left: 30,
                right: 30,
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.4,
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Container(
                        padding: EdgeInsets.only(
                            top: MySize.size16!, bottom: MySize.size16!),
                        child: Column(
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.only(
                                  left: MySize.size16!,
                                  right: MySize.size16!),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: MySize.size16!),
                                    child: TextFormField(
                                      style: AppTheme.getTextStyle(
                                          themeData.textTheme.bodyText1,
                                          color: themeData
                                              .colorScheme.onBackground,
                                          fontWeight: 500),
                                      decoration: InputDecoration(
                                        hintText: "First Name",
                                        hintStyle: AppTheme.getTextStyle(
                                            themeData.textTheme.bodyText1,
                                            color: themeData
                                                .colorScheme.onBackground,
                                            fontWeight: 500),
                                      ),
                                      keyboardType:
                                      TextInputType.emailAddress,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: MySize.size16!),
                                    child: TextFormField(
                                      style: AppTheme.getTextStyle(
                                          themeData.textTheme.bodyText1,
                                          color: themeData
                                              .colorScheme.onBackground,
                                          fontWeight: 500),
                                      decoration: InputDecoration(
                                        hintText: "Last Name",
                                        hintStyle: AppTheme.getTextStyle(
                                            themeData.textTheme.bodyText1,
                                            color: themeData
                                                .colorScheme.onBackground,
                                            fontWeight: 500),
                                      ),
                                      keyboardType:
                                      TextInputType.emailAddress,
                                    ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 24,
                left: 12,
                child: BackButton(
                  color: themeData.colorScheme.onBackground,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                bottom: 10,
                left: 30,
                right: 30,
                child: Container(
                  padding: EdgeInsets.only(
                      left: MySize.size16!,
                      right: MySize.size16!),
                  margin:
                  EdgeInsets.only(top: MySize.size16!),
                  width:
                  MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(MySize.size24!)),
                    boxShadow: [
                      BoxShadow(
                        color: themeData
                            .colorScheme.primary
                            .withAlpha(18),
                        blurRadius: 3,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: ElevatedButton(

                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              Spacing.xy(16, 0))
                      ),
                      onPressed: () { Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PropertiesScreen()));},
                      child: Text("LET'S GET STARTED",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.button,
                              fontWeight: 600,
                              color: themeData
                                  .colorScheme.onPrimary,
                              letterSpacing: 0.5))),
                ),
              ),
            ],
          ),
        )
    );
  }
}

class _MyCustomClipper extends CustomClipper<Path> {
  final BuildContext _context;

  _MyCustomClipper(this._context);

  @override
  Path getClip(Size size) {
    final path = Path();
    Size size = MediaQuery.of(_context).size;
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(0, size.height * 0.6);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
