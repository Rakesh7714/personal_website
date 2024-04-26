import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              alignment: Alignment.center,
              padding:const  EdgeInsets.symmetric(vertical: 20),
              child:const  Text(
                'Coded by Rakesh with Flutter 3.19',
                style: TextStyle(
                    color: CustomColor.whiteSecondary,
                    fontWeight: FontWeight.w400),
              ),
            );
  }
}