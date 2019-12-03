import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'appCard.dart';
import 'userGender.dart';

const Color darkPurple = Color(0xFF090D20);
const Color lightPurple = Color(0xFF1D1F33);
const Color red = Color(0xFFEB1654);

const double bottomConHeight = 75.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: AppCard(
                      cardColor: lightPurple,
                      cardChild: UserGender(
                        gender: 'MALE',
                        genderIcon: MaterialCommunityIcons.human_male,
                      ),
                    ),
                  ),
                  Expanded(
                    child: AppCard(
                      cardColor: lightPurple,
                      cardChild: UserGender(
                        gender: 'FEMALE',
                        genderIcon: MaterialCommunityIcons.human_female,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: AppCard(
                      cardColor: lightPurple,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: AppCard(
                      cardColor: lightPurple,
                    ),
                  ),
                  Expanded(
                    child: AppCard(
                      cardColor: lightPurple,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: red,
              width: double.infinity,
              height: bottomConHeight,
              margin: EdgeInsets.only(top: 20.0),
            ),
          ],
        ));
  }
}