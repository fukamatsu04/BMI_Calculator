import 'package:flutter/material.dart';
import 'colors.dart';
import 'const.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum GenderType {
  male,
  female,
}

// ignore: use_key_in_widget_constructors
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = AppColors.inactiveCardColor;
  Color femaleCardColour = AppColors.inactiveCardColor;

  int height = 180;

  // 1 = male, 2 = female
  void updateColor(GenderType gender) {
    if (gender == GenderType.male) {
      if (maleCardColour == AppColors.inactiveCardColor) {
        maleCardColour = AppColors.activeCardColor;
        femaleCardColour = AppColors.inactiveCardColor;
      } else {
        maleCardColour = AppColors.inactiveCardColor;
      }
    }
    if (gender == GenderType.female) {
      if (femaleCardColour == AppColors.inactiveCardColor) {
        femaleCardColour = AppColors.activeCardColor;
        maleCardColour = AppColors.inactiveCardColor;
      } else {
        femaleCardColour = AppColors.inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(GenderType.male);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColour,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(GenderType.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColour,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: AppColors.containerBackgroundColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: numberTextStyle,
                            ),
                            Text(
                              'CM',
                              style: labelTextStyle,
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: AppColors.sliderActiveColor,
                          inactiveColor: AppColors.sliderInactiveColor,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: AppColors.containerBackgroundColor,
                    cardChild: Column(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: AppColors.containerBackgroundColor,
                    cardChild: Column(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 70.0,
          ),
        ],
      ),
    );
  }
}
