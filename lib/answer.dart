import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final Function questioncounter;
  final String ansChoice;

  Answer(this.ansChoice, this.questioncounter);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(ansChoice),
        onPressed: questioncounter
      ),
    );
  }
}
