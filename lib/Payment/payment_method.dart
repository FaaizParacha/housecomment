import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:housecomment/Payment/new_payment_card.dart';

import '../app_theme.dart';
import '../utils/size_config.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  late ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    themeData = Theme.of(context);
    return Scaffold(
      body: Stack(alignment: Alignment.center,
        children: [
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MySize.size16!,right: MySize.size16!,
                    top: MySize.size16!),
                child: Container(
                    height: MediaQuery.of(context).size.height*0.2,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color:themeData.colorScheme.onBackground ,
                          width: 3),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Next Payment on",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.headline6,
                                fontWeight: 600,
                                color: themeData.colorScheme.onBackground,
                                letterSpacing: 0.3)
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MySize.size16!),
                          child: Text(" March 5",style: AppTheme.getTextStyle(
                              themeData.textTheme.headline4,
                              fontWeight: 600,
                              color: themeData.colorScheme.onBackground,
                              letterSpacing: 0.3)),
                        ),
                      ],)
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MySize.size16!,right: MySize.size16!,
                    top: MySize.size16!),
                child: Container(
                  padding: EdgeInsets.only(top: MySize.size16!),
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height*0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Moses McCall",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.headline6,
                              fontWeight: 600,
                              color: themeData.colorScheme.onBackground,
                              letterSpacing: 0.3)
                      ),
                        Text("****5346",
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.headline6,
                                fontWeight: 600,
                                color: themeData.colorScheme.onBackground,
                                letterSpacing: 0.3)
                        ),
                      Container(
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
                            child: Text("Update Payment Method",
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.button,
                                    fontWeight: 600,
                                    color: themeData.colorScheme.onPrimary,
                                    letterSpacing: 0.3))),
                      ),
                    ],),
                  )
                ),
              ),
            ],
          ),

          Positioned(
              bottom: 15,
              child: Row(
               children: [
                 Container(
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
                 ),
                 SizedBox(width: 8,),
                 Container(
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
                         Navigator.pop(context);
                       },
                       child: Text("Cancel Subscription",
                           style: AppTheme.getTextStyle(
                               themeData.textTheme.button,
                               fontWeight: 600,
                               color: themeData.colorScheme.onPrimary,
                               letterSpacing: 0.3))),
                 ),
               ],
              ))
        ],
      )
    );
  }
}
