import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
            children: <Widget> [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
            ],
          ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
            children: <Widget> [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
            ],
          ),
          ),
          Container(
            width: double.infinity,
            color: bottomContainerColor,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      )
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color colour;

  const ReusableCard({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      );
  }
}