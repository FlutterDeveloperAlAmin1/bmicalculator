import 'package:dmi_app/components/bottom_buttom.dart';
import 'package:dmi_app/constants.dart';
import 'package:dmi_app/components/reusable_card.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.resultText,required this.interpretation});

  final String bmiResult;
  final String  resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
                'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child:ReusableCard(color: kActiveCardColour,
            cardChild:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    resultText.toUpperCase(),
                style: resultTextStyle,
                ),
                Text(
                    bmiResult,
                  style: kBMITextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                   interpretation,
                   textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                )
              ],
            ) ,
            ) ,
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
            onTap: (){
                Navigator.pop(context);
            },
          )
        ],
      )
    );
  }
}
