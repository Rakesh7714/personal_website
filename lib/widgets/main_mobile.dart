import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 20,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.whiteSecondary.withOpacity(1),
                CustomColor.whitePrimary.withOpacity(1),
              ]).createShader(bounds);
            },
            child: Image.asset(
              'assets/me.png',
              width: screenWidth,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Hi,\nI am Rakesh\nA Flutter Developer",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.5,
                color: CustomColor.whitePrimary),
          ),
          SizedBox(
            width: 190.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yellowPrimary),
                onPressed: () {},
                child: const Text(
                  'Get in Touch',
                  style: TextStyle(color: CustomColor.whitePrimary),
                )),
          )
        ],
      ),
    );
  }
}
