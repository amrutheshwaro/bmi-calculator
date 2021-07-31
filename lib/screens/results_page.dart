import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';

import '../components/project_scaffold.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String bmiResultText;
  final String bmiResultInterpretation;

  ResultsPage(
      {@required this.bmiResult,
      @required this.bmiResultText,
      @required this.bmiResultInterpretation});

  @override
  Widget build(BuildContext context) {
    return ProjectScaffold(
      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiResultText.toUpperCase(),
                      style: kResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      bmiResultInterpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            submitText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
