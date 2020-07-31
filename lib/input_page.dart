import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseble_conatiner.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0XFF1D1E33);
const inActiveCardColor = Color(0XFF111328);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color feMaleCardColor = inActiveCardColor;

  void updateColor(Gender selectedGender) {
    setState(() {
      if (selectedGender == Gender.male) {
        maleCardColor = activeCardColor;
        feMaleCardColor = inActiveCardColor;
      }
      if (selectedGender == Gender.female) {
        maleCardColor = inActiveCardColor;
        feMaleCardColor = activeCardColor;
      }
    });
  }

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
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColor(Gender.male);
                    },
                    child: ReusebleContainer(
                      colour: maleCardColor,
                      cardContent: IconContent(
                        icon: Icon(
                          FontAwesomeIcons.mars,
                          size: 50.0,
                        ),
                        iconName: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColor(Gender.female);
                    },
                    child: ReusebleContainer(
                      colour: feMaleCardColor,
                      cardContent: IconContent(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 50.0,
                        ),
                        iconName: "Female",
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
                ReusebleContainer(
                  colour: activeCardColor,
                  cardContent: IconContent(),
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
