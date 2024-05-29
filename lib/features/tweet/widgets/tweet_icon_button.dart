import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfeed/theme/theme.dart';
import 'package:svg_flutter/svg.dart';

class TweetIconButton extends StatelessWidget {
  final String pathName;
  final String text;
  final VoidCallback onTap;
  const TweetIconButton({
    Key? key,
    required this.pathName,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
        SvgPicture.asset(
         pathName, 
         color: Pallete.greyColor,
         ),
         Container(
           margin: const EdgeInsets.all(6),
           child: Text(
            text, style: const TextStyle(
            fontSize: 16,
           ),
           ),
         ),
       ],
      ),
    );
  }
}
