import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusable_card.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interPretation});

  final String bmiResult;
  final String resultText;
  final String interPretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bmi Calculater'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kYourResultStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusablecard(
              colour: kCardColour,
              onPressed: () {},
              cardChild: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                    ),
                    Center(child: Text(bmiResult, style: kBmiTextStyle)),
                    Text(
                      interPretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'Re-Calculate'),
        ],
      ),
    );
  }
}
