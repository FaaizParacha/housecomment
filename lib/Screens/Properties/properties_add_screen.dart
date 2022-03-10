import 'package:flutter/cupertino.dart';
import 'package:housecomment/Screens/Properties/properties_list.dart';
import 'package:housecomment/Screens/User/profile.dart';
import 'package:housecomment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:housecomment/app_theme.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:housecomment/Screens/Properties/properties_detail.dart';

class PropertiesAddScreen extends StatefulWidget {

  @override
  _PropertiesAddScreenState createState() => _PropertiesAddScreenState();
}

class _PropertiesAddScreenState extends State<PropertiesAddScreen> {
  late ThemeData themeData;
  late CustomAppTheme customAppTheme;
  int? selectedCategory = 0;
  String? value;
  Widget build(BuildContext context) {
    MySize().init(context);
    themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    customAppTheme = AppTheme.getCustomAppTheme();
    return Scaffold(
        appBar: AppBar(
          title: Text('House Comment',),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>EditProfileScreen()));
                },
                child: CircleAvatar(
                  child: Icon(Icons.person),),
              ),
            ),],
        ),
        body: ListView(
            //padding: EdgeInsets.all(24),
            children: <Widget>[
             Padding( padding: EdgeInsets.only(top: 24,left: 24,right: 24),),
              Container(
                margin: Spacing.horizontal(24),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: customAppTheme.bgLayer3,
                          borderRadius: BorderRadius.all(
                              Radius.circular(MySize.size8!)),
                        ),
                        padding: Spacing.all(6),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: MySize.size16!),
                                child: TextFormField(
                                  style: AppTheme.getTextStyle(
                                      themeData.textTheme.bodyText2,
                                      letterSpacing: 0,
                                      color: themeData
                                          .colorScheme.onBackground,
                                      fontWeight: 500),
                                  decoration: InputDecoration(
                                    hintText:
                                    "Search properties",
                                    hintStyle:
                                    AppTheme.getTextStyle(
                                        themeData.textTheme
                                            .bodyText2,
                                        letterSpacing: 0,
                                        color: themeData
                                            .colorScheme
                                            .onBackground,
                                        fontWeight: 500),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.all(
                                          Radius.circular(
                                              MySize.size8!),
                                        ),
                                        borderSide:
                                        BorderSide.none),
                                    enabledBorder:
                                    OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.all(
                                          Radius.circular(
                                              MySize.size8!),
                                        ),
                                        borderSide:
                                        BorderSide.none),
                                    focusedBorder:
                                    OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.all(
                                          Radius.circular(
                                              MySize.size8!),
                                        ),
                                        borderSide:
                                        BorderSide.none),
                                    isDense: true,
                                    contentPadding:
                                    EdgeInsets.all(0),
                                  ),
                                  textInputAction:
                                  TextInputAction.search,
                                  textCapitalization:
                                  TextCapitalization.sentences,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(MySize.size4!),
                              decoration: BoxDecoration(
                                  color:
                                  themeData.colorScheme.primary,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          MySize.size8!))),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    MySize.size8!),
                                child: Icon(
                                  MdiIcons.magnify,
                                  color: themeData
                                      .colorScheme.onPrimary,
                                  size: MySize.size20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {

                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext buildContext) {
                              return FilterWidget();
                            });

                      },
                      child: Container(
                        margin:
                        EdgeInsets.only(left: MySize.size16!),
                        decoration: BoxDecoration(
                          color: themeData.backgroundColor,
                          borderRadius: BorderRadius.all(
                              Radius.circular(MySize.size8!)),
                          boxShadow: [
                            BoxShadow(
                              color: customAppTheme.shadowColor,
                              blurRadius: MySize.size4!,
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(MySize.size8!),
                        child: Icon(
                          MdiIcons.tune,
                          color: themeData.colorScheme.primary,
                          size: MySize.size20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Row(children: [
                      DropdownButton<String>(
                        hint: Text("City"),
                        dropdownColor: Colors.white,
                        underline:const Text(""),
                        items: <String>['aab', 'bbb', 'ccc', 'ddd'].
                        map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newvalue) {
                          setState(() {
                            value= newvalue;
                          });
                        },
                      ),
                      SizedBox(width: 30,),
                      DropdownButton<String>(
                        hint: Text("State"),dropdownColor: Colors.white,
                        underline:const Text(""),
                        items: <String>['Abc', 'ccc', 'ddd', 'eee'].
                        map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newvalue) {
                          setState(() {
                            value= newvalue;
                          });
                        },
                      ),
                    ],),
                  )
                  ,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  margin: Spacing.top(24),
                  child: Text(
                    "Properties your're following ",
                    style: AppTheme.getTextStyle(
                        themeData.textTheme.subtitle1,
                        color: themeData.colorScheme.onBackground,
                        fontWeight: 600,
                        muted: true),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,right: 24),
                child: _singleProperty(
                    image: './assets/Images/all-1.jpg',
                    street: "18 Logan Circle",
                    city: "Washington",
                    state: "DC",
                    zipcode: "20005",
                    number_comments: "10"),
              ),
            ])
    );
  }

  Widget _singleProperty(
      {
        required String image,
        required String street,
        required String city,
        required String state,
        required String zipcode,
        required String number_comments
      }) {
    return
       InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PropertiesScreen(
                        receivingPropertyListTile: _singleProperty(image: image, street: street, city: city, state: state, zipcode: zipcode, number_comments: number_comments),)));

        },
        child: Container(
          margin: Spacing.top(24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(
                    image,
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
                      street,
                      style: AppTheme.getTextStyle(themeData.textTheme.bodyText1,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 600,
                          xMuted: true),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${ city } ${ state }, ${ zipcode }',
                      style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
                          color: themeData.colorScheme.onBackground,
                          fontWeight: 600),
                    ),

                    Row(
                      children: [
                        Icon(
                          MdiIcons.chatOutline,
                          color: themeData.colorScheme.onBackground,
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Text(
                              number_comments,
                              style: AppTheme.getTextStyle(
                                  themeData.textTheme.bodyText2,
                                  color: themeData.colorScheme.onBackground,
                                  xMuted: true),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),

    );
  }
}

class FilterWidget extends StatefulWidget {

  const FilterWidget({Key? key}) : super(key: key);

  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  late ThemeData themeData;
  late CustomAppTheme customAppTheme;

  late List<String> _course,
      _selectedCourse,
      _duration,
      _selectedDuration,
      _type,
      _selectedType;

  @override
  void initState() {
    super.initState();
    themeData = AppTheme.getThemeFromThemeMode();
    customAppTheme = AppTheme.getCustomAppTheme();

    _course = [
      "Physics",
      "Biology",
      "Computer",
      "Maths",
      "Chemistry",
      "Economics",
      "Sport",
      "History",
      "English",
      "Art"
    ];

    _duration = ["1-2 Week", "3-4 Week", "2 Month", "3 Month"];
    _type = ["Beginner", "Intermediate", "Advanced", "Expert"];

    _selectedCourse = ["Maths"];
    _selectedDuration = ["3-4 Week"];
    _selectedType = ["Intermediate"];
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> courseWidget = [], durationWidget = [], typeWidget = [];
    int i = 0;
    for (i = 0; i < _course.length; i++) {
      courseWidget.add(InkWell(
        onTap: () {
          setState(() {
            if (_selectedCourse.contains(_course[i])) {
              _selectedCourse.remove(_course[i]);
            } else {
              _selectedCourse.add(_course[i]);
            }
          });
        },
        child: optionCourseChip(
            option: _course[i],
            isSelected: _selectedCourse.contains(_course[i])),
      ));
    }

    for (i = 0; i < _duration.length; i++) {
      durationWidget.add(InkWell(
        onTap: () {
          setState(() {
            if (_selectedDuration.contains(_duration[i])) {
              _selectedDuration.remove(_duration[i]);
            } else {
              _selectedDuration.add(_duration[i]);
            }
          });
        },
        child: optionDurationChip(
            isSelected: _selectedDuration.contains(_duration[i]),
            option: _duration[i]),
      ));
    }
    for (i = 0; i < _type.length; i++) {
      typeWidget.add(optionTypeChip(
          isSelected: _selectedType.contains(_type[i]), option: _type[i]));
    }

    return Container(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: themeData.backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(MySize.size16!),
                topRight: Radius.circular(MySize.size16!))),
        child: Padding(
          padding: EdgeInsets.only(
              top: MySize.size16!,
              left: MySize.size24!,
              right: MySize.size24!,
              bottom: MySize.size16!),
          child: ListView(
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Filter",
                          style: AppTheme.getTextStyle(themeData.textTheme.subtitle1,
                              color: themeData.colorScheme.onBackground,
                              fontWeight: 700),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: Spacing.all(6),
                        decoration: BoxDecoration(
                            color: themeData.colorScheme.primary.withAlpha(40),
                            shape: BoxShape.circle
                        ),
                        child: Icon(MdiIcons.check,color: themeData.colorScheme.primary,size: MySize.size20,),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: Spacing.top(24),
                child: Text(
                  "Course",
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      color: themeData.colorScheme.onBackground,
                      fontWeight: 600),
                ),
              ),
              Container(
                margin: Spacing.top(12),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 12,
                  children: courseWidget,
                ),
              ),
              Container(
                margin: Spacing.top(24),
                child: Text(
                  "Type",
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      color: themeData.colorScheme.onBackground,
                      fontWeight: 600),
                ),
              ),
              Container(
                margin: Spacing.top(12),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 12,
                  children: typeWidget,
                ),
              ),
              Container(
                margin: Spacing.top(24),
                child: Text(
                  "Duration",
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2,
                      color: themeData.colorScheme.onBackground,
                      fontWeight: 600),
                ),
              ),
              Container(
                margin: Spacing.top(12),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 12,
                  children: durationWidget,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget optionCourseChip({required String option, required bool isSelected}) {
    return InkWell(
      onTap: () {
        setState(() {
          if (_selectedCourse.contains(option)) {
            _selectedCourse.remove(option);
          } else {
            _selectedCourse.add(option);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color:
            isSelected ? themeData.colorScheme.primary : Colors.transparent,
            border: Border.all(
                color: isSelected
                    ? themeData.colorScheme.primary
                    : customAppTheme.bgLayer4,
                width: 1),
            borderRadius: BorderRadius.all(Radius.circular(MySize.size16!))),
        padding: Spacing.fromLTRB(10, 6, 10, 6),
        child: Text(
          option,
          style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
              color: isSelected
                  ? themeData.colorScheme.onPrimary
                  : themeData.colorScheme.onBackground),
        ),
      ),
    );
  }

  Widget optionTypeChip({required String option, required bool isSelected}) {
    return InkWell(
      onTap: () {
        setState(() {
          if (_selectedType.contains(option)) {
            _selectedType.remove(option);
          } else {
            _selectedType.add(option);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color:
            isSelected ? themeData.colorScheme.primary : Colors.transparent,
            border: Border.all(
                color: isSelected
                    ? themeData.colorScheme.primary
                    : customAppTheme.bgLayer4,
                width: 1),
            borderRadius: BorderRadius.all(Radius.circular(MySize.size16!))),
        padding: Spacing.fromLTRB(10, 6, 10, 6),
        child: Text(
          option,
          style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
              color: isSelected
                  ? themeData.colorScheme.onPrimary
                  : themeData.colorScheme.onBackground),
        ),
      ),
    );
  }

  Widget optionDurationChip({required String option, required bool isSelected}) {
    return InkWell(
      onTap: () {
        setState(() {
          if (_selectedDuration.contains(option)) {
            _selectedDuration.remove(option);
          } else {
            _selectedDuration.add(option);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color:
            isSelected ? themeData.colorScheme.primary : Colors.transparent,
            border: Border.all(
                color: isSelected
                    ? themeData.colorScheme.primary
                    : customAppTheme.bgLayer4,
                width: 1),
            borderRadius: BorderRadius.all(Radius.circular(MySize.size16!))),
        padding: Spacing.fromLTRB(10, 6, 10, 6),
        child: Text(
          option,
          style: AppTheme.getTextStyle(themeData.textTheme.bodyText2,
              color: isSelected
                  ? themeData.colorScheme.onPrimary
                  : themeData.colorScheme.onBackground),
        ),
      ),
    );
  }
}
