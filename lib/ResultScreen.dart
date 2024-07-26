import 'package:bmi_app/ConstantFile.dart';
import 'package:bmi_app/RepeatContainer.dart';
import 'package:bmi_app/input_page.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text('YOUR RESULT',
                style: KTitleStyle,),
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: RepeatContainer(
                color: activeColor,
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('NORMAL',
                   style: KResultStyle,
                    ),
                    Text('18.3',
                    style: KBmiTextStyle,
                    ),
                    Text('BMI is Low You Should Have TO Work More',
                      style: KBodyTextStyle
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
            child:  GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Input()));
            },
            child: Container(
              child:const Center(
                child: Text('RECALCULATE',
                    style: KLargeButtonstyle
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top:10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),),

        ],
      ),
    );
  }
}

