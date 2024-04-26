import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/sns_link.dart';
import 'package:my_portfolio/widgets/textfileld.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(20, 25, 20, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            'Get In Touch!!',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 28,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= kMindesktopWidth) {
                return buildTextFieldDesktop();
              }

              return buildTextFieldMobile();
            }),
          ),
          const SizedBox(
            height: 28,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: const CustomTextFieldWidget(
              hintext: 'What is in your mind!',
              maxLine: 8,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              height: 40,
              width: screenWidth,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.yellowSecondary),
                  onPressed: () {},
                  child: const Text(
                    'Get In Touch',
                    style: TextStyle(color: CustomColor.scaffoldBg),
                  )),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(
              color: CustomColor.bgLight2,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Wrap(
            spacing: 10.0,
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLink.linkedinUrl]);
                },
                child: Image.asset(
                  'assets/linkedin.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLink.fbUrl]);
                },
                child: Image.asset(
                  'assets/facebook.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLink.githubUrl]);
                },
                child: Image.asset(
                  'assets/github.png',
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLink.instagramUrl]);
                },
                child: Image.asset(
                  'assets/instagram.png',
                  width: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column buildTextFieldMobile() {
    return const Column(
      children: [
        CustomTextFieldWidget(
          hintext: 'Enter your name',
        ),
        SizedBox(
          height: 18,
        ),
        CustomTextFieldWidget(
          hintext: 'Enter your email',
        ),
      ],
    );
  }

  Row buildTextFieldDesktop() {
    return const Row(
      children: [
        Flexible(
            child: CustomTextFieldWidget(
          hintext: 'Enter your name',
        )),
        SizedBox(
          width: 16,
        ),
        Flexible(
          child: CustomTextFieldWidget(
            hintext: 'Enter your email',
          ),
        ),
      ],
    );
  }
}
