import 'package:bmi_app/ConstantFile.dart';
import 'package:flutter/material.dart';
import 'columnWidget.dart';
import 'RepeatContainer.dart';



enum Gender {
  male,
  female,
}

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  Gender? selectGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainer(
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    color: selectGender == Gender.male ? activeColor : dactiveColor,
                    cardWidget: columnWidget(ico: Icons.male, txt: 'MALE'),
                  ),
                ),
                Expanded(
                  child: RepeatContainer(
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    color: selectGender == Gender.female ? activeColor : dactiveColor,
                    cardWidget: columnWidget(ico: Icons.female, txt: "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RepeatContainer(
              color: Color(0xFF1D1E33),
              cardWidget: Column(
                children: [
                  Text('Height', style:KLabelStyle,),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainer(
                    color: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: RepeatContainer(
                    color: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



