import 'package:bmi_app/ConstantFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'columnWidget.dart';
import 'RepeatContainer.dart';
import 'ResultScreen.dart';


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
  int SliderAge=20;
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIcon(
                              iconData:FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  SliderWeight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0,),
                            RoundIcon(iconData:FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  SliderWeight++;
                                });
                              },
                            ),
                          ],
                        )
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
                          SliderAge.toString(),
                          style: KNumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             RoundIcon(
                               iconData:FontAwesomeIcons.minus,
                               onPress: (){
                                 setState(() {
                                   SliderAge--;
                                 });
                               },
                             ),
                            SizedBox(width: 10.0,),
                            RoundIcon(iconData:FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  SliderAge++;
                                });
                              },
                             ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
            },
          child: Container(
            child:const Center(
            child: Text('CALCULATE',
            style: KLargeButtonstyle
             ),
            ),
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: 80.0,
          ),
          ),
        ],
      ),
    );
  }
}





class RoundIcon extends StatelessWidget {
  RoundIcon({required this.iconData, this.onPress});

  final IconData? iconData;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4C4F5E ),

    );
  }
}









