import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../utils/size_config.dart';

class NewPaymentCard extends StatefulWidget {
  const NewPaymentCard({Key? key}) : super(key: key);

  @override
  State<NewPaymentCard> createState() => _NewPaymentState();
}

class _NewPaymentState extends State<NewPaymentCard> {
  late ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    themeData = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
                onPressed:(){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
          ),
          Positioned(
            top: 50,
              left: 30,
              right: 30,
              child: Center(child: Text("Add New Payment",style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,fontSize: 18
              ),))),
          Positioned(
            left: 30,
            right: 30,
            top: MediaQuery.of(context).size.height/2.5,
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
                                    hintText: "Account Holder Name",
                                    hintStyle: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        color: themeData
                                            .colorScheme.onBackground,
                                        fontWeight: 500),
                                  ),
                                  keyboardType:
                                  TextInputType.name,
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
                                    hintText: "Account Number",
                                    hintStyle: AppTheme.getTextStyle(
                                        themeData.textTheme.bodyText1,
                                        color: themeData
                                            .colorScheme.onBackground,
                                        fontWeight: 500),
                                  ),
                                  keyboardType:
                                  TextInputType.number,
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(top: MySize.size16!),
                                      child: TextFormField(
                                        style: AppTheme.getTextStyle(
                                            themeData.textTheme.bodyText1,
                                            color: themeData
                                                .colorScheme.onBackground,
                                            fontWeight: 500),
                                        decoration: InputDecoration(
                                          hintText: "Expiry Date",
                                          hintStyle: AppTheme.getTextStyle(
                                              themeData.textTheme.bodyText1,
                                              color: themeData
                                                  .colorScheme.onBackground,
                                              fontWeight: 500),
                                        ),
                                        keyboardType:
                                        TextInputType.datetime,
                                      ),
                                    ),
                                  ),SizedBox(width: 8,),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(top: MySize.size16!),
                                      child: TextFormField(
                                        style: AppTheme.getTextStyle(
                                            themeData.textTheme.bodyText1,
                                            color: themeData
                                                .colorScheme.onBackground,
                                            fontWeight: 500),
                                        decoration: InputDecoration(
                                          hintText: "CVV",
                                          hintStyle: AppTheme.getTextStyle(
                                              themeData.textTheme.bodyText1,
                                              color: themeData
                                                  .colorScheme.onBackground,
                                              fontWeight: 500),
                                        ),
                                        keyboardType:
                                        TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Positioned(
            left: 30,
            right: 30,
            bottom: 0,
            child:Container(
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewPaymentCard()));
                  },
                  child: Text("Add New Card",
                      style: AppTheme.getTextStyle(
                          themeData.textTheme.button,
                          fontWeight: 600,
                          color: themeData.colorScheme.onPrimary,
                          letterSpacing: 0.3))),
            ),)
        ],
      ),
    );
  }
}
