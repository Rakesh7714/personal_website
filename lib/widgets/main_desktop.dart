import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDesktop extends StatefulWidget {
  const MainDesktop({super.key});

  @override
  State<MainDesktop> createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi,\nI am Rakesh",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    color: CustomColor.whitePrimary),
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Text(
                    "${_animation.value < 0.5 ? 'A Flutter Developer' : 'A Designer'}",
                    style: const TextStyle(
                        fontSize: 30.0,
                        color: CustomColor.whitePrimary,
                        fontWeight: FontWeight.w700),
                  );
                },
              ),
              SizedBox(
                height: 18,
              ),
              SizedBox(
                width: 250.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColor.yellowPrimary),
                    onPressed: () {},
                    child: const Text(
                      'Get in Touch',
                      style: TextStyle(color: CustomColor.whitePrimary),
                    )),
              ),
            ],
          ),
          Image.asset(
            'assets/me.png',
            width: screenWidth / 2.5,
          ),
        ],
      ),
    );
  }
}
