import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'reuseabaleCard.dart';

const bottomContainerColor =Colors.teal ;
const activeColor = Color(0xFF11E0CB42);
const inactiveColor= Color(0xFF122932B3);
const containerHeight= 80.0;


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor= inactiveColor;
  Color femaleColor= inactiveColor;

  void changeGenderColor(int gender){
    if(gender == 1){
      if(maleColor == inactiveColor){
      maleColor= activeColor;
      femaleColor= inactiveColor;
      } else{
        maleColor = inactiveColor;
      }
    }
    else if(gender == 2){
      if(femaleColor == inactiveColor){
        femaleColor= activeColor;
        maleColor= inactiveColor;
      } else{
        femaleColor = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child:  GestureDetector(
                  onTap :(){
                    setState(() {
                      changeGenderColor(1);
                    });
                  },
                child: ReuseableCard(
                    maleColor,
                    IconContent(
                    FontAwesomeIcons.mars,'Male'),
                  ),
                ),


              ),
              // female Expanded
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    changeGenderColor(2);
                  });
                },
                child: ReuseableCard
                  (
                  femaleColor,
                  IconContent(
                    FontAwesomeIcons.venus,
                    'Female'
                  )

                  ),
              )),
            ],
          )),
          Expanded(child:  ReuseableCard(

            activeColor,

              const Column(
                children: [
                  Icon(
                    FontAwesomeIcons.mars,
                    size: 80,
                  )
                ],
              ))),
          Expanded(child: Row(
            children: [
              Expanded(child:  ReuseableCard(
                  activeColor,
                  const Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      )
                    ],
                  ))),
              Expanded(child: ReuseableCard(
                  activeColor,
                  const Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      )
                    ],
                  )
              ))
            ],
          )),
            Container(

              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: containerHeight,
              decoration: const BoxDecoration(
                color: bottomContainerColor,
              ),
            )
          ],
        )
    );
  }
}


