import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';


class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(child: Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.all(15.0),
            child: Text('Your Results', style: kTitleTextStyle,),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Text(
                    'Normal',
                    style: kResultsTextStyle,

                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI is quite low, you should eat more! ',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: "RE-CALCULATE",
            onTap: (){
            Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}
