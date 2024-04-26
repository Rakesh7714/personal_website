import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/projectcard.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: screenWidth,
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 60),
          child: Column(
            children: [
              const Text(
                'Work project',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 850),
                child: Wrap(
                  runSpacing: 16,
                  spacing: 12,
                  children: [
                    for (int i = 0; i < workProjectUtils.length; i++)
                      ProjectCardWidget(
                        projectUtils: workProjectUtils[i],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //Hobby project
        Container(
          width: screenWidth,
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 60),
          child: Column(
            children: [
              const Text(
                'Hobby project',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 850),
                child: Wrap(
                  runSpacing: 16,
                  spacing: 16,
                  children: [
                    for (int i = 0; i < hobbyProjectUtils.length; i++)
                      ProjectCardWidget(
                        projectUtils: hobbyProjectUtils[i],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
