import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';

const bottomContainerColor =Color(0xFF1DAEAB) ;
const reuseableCardColr = Colors.black12;
const containerHeight= 80.0;

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
        body: Column(
          children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child:  ReuseableCard(
                  reuseableCardColr,
                  IconContent(
                  FontAwesomeIcons.mars,'Male'),



                ),


              ),
              Expanded(child:  ReuseableCard
                (
                reuseableCardColr,
                IconContent(
                  FontAwesomeIcons.venus,
                  'Female'
                )

                )),
            ],
          )),
          Expanded(child:  ReuseableCard(
            reuseableCardColr,
              Column(
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
                  reuseableCardColr,
                  Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      )
                    ],
                  ))),
              Expanded(child: ReuseableCard(
                  reuseableCardColr,
                  Column(
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

              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: containerHeight,
              decoration: BoxDecoration(
                color: bottomContainerColor,
              ),
            )
          ],
        )
    );
  }
}


class ReuseableCard extends StatelessWidget {
   final Color colour;
   final Widget cardChild;
   ReuseableCard( this.colour, this.cardChild );
  @override
  Widget build(BuildContext context) {
    return  Container(
    child: cardChild,
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
    color: colour,
    borderRadius: BorderRadius.circular(10)
    ),
    );
  }
}
