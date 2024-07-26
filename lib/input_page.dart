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
  int SliderHeight=180;
  int SliderWeight=60;
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
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height',
                    style:KLabelStyle,),
                  Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(SliderHeight.toString(),
                      style:KNumberstyle,
                      ),
                      Text('cm',
                        style:KLabelStyle,),
                    ],
                  ),
                  Slider(value: SliderHeight.toDouble(),
                   min: 120,
                      max: 220,
                      activeColor:Color(0xFFEB1555) ,
                      inactiveColor:Color(0xFF8D8E98) ,

                      onChanged: (double newValue){
                      setState((){
                        SliderHeight= newValue.round();
                    });

                    },
                  ),
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
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                        style: KLabelStyle,),
                         Text(
                            SliderWeight.toString(),
                          style: KNumberstyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainer(
                    color: Color(0xFF1D1E33),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                        style: KLabelStyle,),
                        Text(
                          SliderWeight.toString(),
                          style: KNumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                          ],
                        )
                      ],
                    ),
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



