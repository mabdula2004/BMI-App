import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body:  Column(
    children: [
    Expanded(
    child: Row(
        children: [
        Expanded(
            child: new RepeatContainerCode(Color(0xFF1D1E33),
                RepeatTextICONeWidget(
                  FontAwesomeIcons.male,
                  "MALE",
                ),
            ),
    ),
    Expanded(
      child: new RepeatContainerCode(Color(0xFF1D1E33),
    RepeatTextICONeWidget(
     FontAwesomeIcons.female,
     "FEMALE",
      ),
     ),
    ),
    ],
    ),
    ),
    Expanded(
      child: new RepeatContainerCode(Color(0xFF1D1E33),
        RepeatTextICONeWidget(
          FontAwesomeIcons.male,
          "MALE",
        ),
      ),
    ),
    Expanded(
    child: Row(
    children: [
    Expanded(
      child: new RepeatContainerCode(Color(0xFF1D1E33),
        RepeatTextICONeWidget(
          FontAwesomeIcons.male,
          "MALE",
        ),
      ),
      ),
    Expanded(
      child: new RepeatContainerCode(Color(0xFF1D1E33),
        RepeatTextICONeWidget(
          FontAwesomeIcons.male,
          "MALE",
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


class RepeatTextICONeWidget extends StatelessWidget {
  RepeatTextICONeWidget(this.iconData,this.label);
  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 85.0,
        ), // Icon
        SizedBox(
          height: 15.0, // Corrected height
        ),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}


class RepeatContainerCode extends StatelessWidget {

  RepeatContainerCode(this.colors, this.cardWidget);
  final Color colors;
  final Widget cardWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardWidget,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ), // BoxDecoration
    ); // Container
  }
}

