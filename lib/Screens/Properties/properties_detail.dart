import 'dart:io';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:housecomment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:housecomment/app_theme.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PropertiesDetailScreen extends StatefulWidget {
  @override
  _PropertiesDetailScreenState createState() => _PropertiesDetailScreenState();
}

class _PropertiesDetailScreenState extends State<PropertiesDetailScreen> {
  late ThemeData themeData;
  late CustomAppTheme customAppTheme;
  PickedFile? imageFile;
  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera ,
    );
    setState(() {
      imageFile = pickedFile;
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
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    customAppTheme = AppTheme.getCustomAppTheme();
    bool isClick =false;
    return Scaffold(
        appBar: AppBar(
          title: Text('House Comment'),
        ),
        body: Column(children: [
        _screenHeader(),
        Container(
        margin: EdgeInsets.only(
            left: MySize.size24!, right: MySize.size24!),
        child: Divider()
        ),
        Row(children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  left: MySize.size12!,
                  right: MySize.size12!),
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
                  ),onPressed: (){},
                  child: Text("All",
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.button,
                          fontWeight: 600,
                          color: themeData
                              .colorScheme.onPrimary,
                          letterSpacing: 0.5))),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  left: MySize.size12!,
                  right: MySize.size12!),
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
                  ),onPressed: (){},
                  child: Text("Kitchen",
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.button,
                          fontWeight: 600,
                          color: themeData
                              .colorScheme.onPrimary,
                          letterSpacing: 0.5))),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  left: MySize.size12!,
                  right: MySize.size12!),
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
                  ),onPressed: (){},
                  child: Text("Bathroom",
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.button,
                          fontWeight: 600,
                          color: themeData
                          .colorScheme.onPrimary
                          ,
                          letterSpacing: 0.5))),
            ),
          ),
        ],),
        Expanded(
        child: ListView(scrollDirection: Axis.vertical,
            children: <Widget> [
              _singleComment(
                  avatar: './assets/Images/all-1.jpg',
                  name: 'Moses McCall',
                  date: 'June 9',
                  message:
                  "Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 Long text 1 ",
                  photo: './assets/Images/profile-banner.jpg'),
              SizedBox(height: 8,),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                      right: 20,top: 10.0, left: 40.0),
                  width: MediaQuery.of(context).size.width,
                    // decoration: BoxDecoration(
                    //     image : DecorationImage(
                    //         fit: BoxFit.fill,
                    //         image : FileImage(File(  imageFile!.path),)
                    //     ))
                  child: imageFile==null?Text(""):
                  Image.file( File(imageFile!.path),fit: BoxFit.fill,)
                ),
              ),
            ]
        )
        ),
       _bottomBarWidget(),
        ]));
  }

  Widget _singleComment(
      {required String avatar,
      required String name,
      required String date,
      required String message,
      String? photo}) {
    return Container(
        margin: const EdgeInsets.only(top: 10.0, right: 20.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _commentAvatar(avatar),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                _commentHeader(name, date),
                _commentBody(message, photo),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, right: 20.0),
                  child: Row(
                    children: [_iconButton(MdiIcons.thumbUpOutline, ''),
                              _iconButton(MdiIcons.thumbDownOutline, '')],
                  ),
                ),
                    TextFormField(
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.bodyText2,
                          letterSpacing: 0.1,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 500),
                      decoration: InputDecoration(
                        hintText: "Write a Reply",
                        hintStyle: AppTheme.getTextStyle(
                            themeData.textTheme.bodyText2,
                            letterSpacing: 0.1,
                            color: themeData.colorScheme.onBackground,
                            muted: true,
                            fontWeight: 500),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(MySize.size40!),
                            ),
                            borderSide: BorderSide(
                                color: customAppTheme.bgLayer4, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(MySize.size40!),
                            ),
                            borderSide: BorderSide(
                                color: customAppTheme.bgLayer4, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(MySize.size40!),
                            ),
                            borderSide: BorderSide(
                                color: customAppTheme.bgLayer4, width: 1)),
                        isDense: true,
                        contentPadding: Spacing.fromLTRB(16, 12, 16, 12),
                        filled: true,
                        fillColor: customAppTheme.bgLayer2,
                      ),
                      textInputAction: TextInputAction.send,
                      onFieldSubmitted: (message) {
                      },
                      textCapitalization: TextCapitalization.sentences,
                    ),
              ]))
        ]));
  }

  //   Widget _screenHeader(String image, String address, String city, String state, String zipcode) {
  Widget _screenHeader() {bool isPressed = true;
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
                './assets/Images/profile-banner.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              )),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '844 N. Ogden St',
                  style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                      color: themeData.colorScheme.onBackground,
                      fontWeight: 600,
                      xMuted: true),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Denver, Co 20810',
                  style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                      color: themeData.colorScheme.onBackground,
                      fontWeight: 600),
                ),

                Row(
                  children: [
                    Text(
                      'Redfin',
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.bodyText2,
                          color: themeData.colorScheme.onBackground,
                          xMuted: true),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _commentAvatar(String avatar) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(avatar),
        ));
  }

  Widget _commentHeader(String name, String date) {
    return Row(children: [
      Container(
          margin: const EdgeInsets.only(right: 5.0),
          child: Text(
            '${name} · ${date}',
            style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                color: themeData.colorScheme.onBackground,
                fontWeight: 600,
                xMuted: true),
          ))
    ]);
  }

  Widget _commentBody(text, image) {
    return Column(children: [
      Text(
        text,
        style: AppTheme.getTextStyle(
          themeData.textTheme.bodyText2,
          color: themeData.colorScheme.onBackground,
        ),
        overflow: TextOverflow.clip,
      ),
      Container(
        margin: Spacing.top(12),
        child: Image(
          image: AssetImage(
            image,
          ),
          height: MySize.getScaledSizeHeight(240),
          width: MySize.safeWidth,
          fit: BoxFit.cover,
        ),
      )
    ]);
  }

  Widget _iconButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16.0,
          color: Colors.black45,
        ),
        Container(
          margin: const EdgeInsets.all(6.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _bottomBarWidget(){
    return Container(
      padding: Spacing.fromLTRB(24, 8, 24, 8),
      height: MySize.size64,

      child: ListView(
      padding: Spacing.zero,
      children: [
        Row(
            children: [
              GestureDetector(
                onTap: (){
                  _showChoiceDialog(context);
                },
                child: Container(
                  padding: Spacing.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: customAppTheme.bgLayer3, width: 1)),
                  child: Icon(
                    MdiIcons.fileImageOutline,
                    color: themeData.colorScheme.onBackground.withAlpha(160),
                    size: MySize.size20,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: MySize.size16!, right: MySize.size16!),
                  child: TextFormField(
                    style: AppTheme.getTextStyle(
                        themeData.textTheme.bodyText2,
                        letterSpacing: 0.1,
                        color: themeData.colorScheme.onBackground,
                        fontWeight: 500),
                    decoration: InputDecoration(
                      hintText: "Write a Comment",
                      hintStyle: AppTheme.getTextStyle(
                          themeData.textTheme.bodyText2,
                          letterSpacing: 0.1,
                          color: themeData.colorScheme.onBackground,
                          muted: true,
                          fontWeight: 500),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(MySize.size40!),
                          ),
                          borderSide: BorderSide(
                              color: customAppTheme.bgLayer4, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(MySize.size40!),
                          ),
                          borderSide: BorderSide(
                              color: customAppTheme.bgLayer4, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(MySize.size40!),
                          ),
                          borderSide: BorderSide(
                              color: customAppTheme.bgLayer4, width: 1)),
                      isDense: true,
                      contentPadding: Spacing.fromLTRB(16, 12, 16, 12),
                      filled: true,
                      fillColor: customAppTheme.bgLayer2,
                    ),
                    textInputAction: TextInputAction.send,
                    onFieldSubmitted: (message) {
                    },
                    textCapitalization: TextCapitalization.sentences,
                  ),
                ),
              ),
              Container(
                padding: Spacing.all(8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: customAppTheme.bgLayer3, width: 1)),
                child: Icon(
                  MdiIcons.chevronRight,
                  color: themeData.colorScheme.onBackground.withAlpha(160),
                  size: MySize.size20,
                ),
              )
            ]

        )
      ]
    )
    );
  }
}
