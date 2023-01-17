import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
            children: <Widget> [
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? kActiveCardColor: kInactiveCardColor,
                  cardChild: IconContent(
                    label: "MALE",
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female? kActiveCardColor: kInactiveCardColor,
                  cardChild: IconContent(
                    label: "FEMALE",
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ),
            ],
          ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget> [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget> [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,

                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,

                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });

                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
            children: <Widget> [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                ),
              ),
            ],
          ),
          ),
          Container(
            width: double.infinity,
            color: kBottomContainerColor,
            height: kBottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      )
    );
  }
}



