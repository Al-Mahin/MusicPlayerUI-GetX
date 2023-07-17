
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
   SectionHeader(this.action,{
    super.key, required this.title 
});
 String title;
  String action = 'View More';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Theme.of(context).textTheme.headline6!.copyWith(color:Colors.white, fontWeight: FontWeight.bold),),
        Text(action,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
      ],
    );
  }
}