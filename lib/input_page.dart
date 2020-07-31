import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseble_conatiner.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CLCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusebleContainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? activeCardColor
                      : inActiveCardColor,
                  cardContent: IconContent(
                    icon: Icon(
                      FontAwesomeIcons.mars,
                      size: 50.0,
                    ),
                    iconName: "Male",
                  ),
                ),
                ReusebleContainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? activeCardColor
                      : inActiveCardColor,
                  cardContent: IconContent(
                    icon: Icon(
                      FontAwesomeIcons.venus,
                      size: 50.0,
                    ),
                    iconName: "Female",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusebleContainer(
                  colour: activeCardColor,
                  cardContent: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("HEIGHT"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: TextStyle(fontSize: 30.0),
                          ),
                          Text(
                            " Cm",
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xffEB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayColor: Color(0x26EB1555),
                          activeTrackColor: Color(0xffffffff),
                          inactiveTrackColor: Color(0xff8d8e98),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 320,
                            onChanged: (double setHeight) {
                              setState(() {
                                height = setHeight.toInt();
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ReusebleContainer(
                  colour: activeCardColor,
                ),
                ReusebleContainer(
                  colour: activeCardColor,
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xffEB1555),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
