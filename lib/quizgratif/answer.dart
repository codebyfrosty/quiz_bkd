import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final Function questioncounter;
  final String ansChoice1;
  final Color warna;
 

  Answer(this.ansChoice1, this.questioncounter, this.warna);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: warna,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: questioncounter,
        child: Text(ansChoice1),
      ),
    );
  }
}
