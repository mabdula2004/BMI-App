import 'package:flutter/material.dart';
import 'columnWidget.dart';
import 'RepaeatContainer.dart';

const activeColor = Color(0xFF1D1E33);
const dactiveColor = Color(0xFF111328);
enum Gender{
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
                    child:GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender=Gender.male;
                        });
                      },
                    child: RepaeatContainer(
                      color:  selectGender==Gender.male?activeColor :dactiveColor,
                      cardWidget:  columnWidget(ico: Icons.male, txt: 'MALE',),
                    ),
                  ),
                  ),
                  Expanded(
                  child:GestureDetector(
                  onTap: () {
                  setState(() {
                  selectGender=Gender.female;
                  });
                  },
                    child: RepaeatContainer(
                      color:  selectGender==Gender.female?activeColor :dactiveColor,
                      cardWidget:  columnWidget(ico: Icons.female,txt: "FEMALE",),
                    ),

                  ),
                  ),
                ],
              ),
            ),

            Expanded(
                child: new RepaeatContainer(
                  color: Color(0xFF1D1E33),
                )
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: new RepaeatContainer(
                        color: Color(0xFF1D1E33),
                      )
                  ),
                  Expanded(
                      child:new RepaeatContainer(color: Color(0xFF1D1E33))
                  ),


                ],
              ),),
          ],
        )
    );
  }
}



