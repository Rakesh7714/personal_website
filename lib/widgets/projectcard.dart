import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  final ProjectUtils projectUtils;
  const ProjectCardWidget({
    required this.projectUtils,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            projectUtils.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projectUtils.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: CustomColor.whitePrimary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              projectUtils.subtitle,
              style: const TextStyle(
                  fontSize: 12, color: CustomColor.whiteSecondary),
            ),
          ),
          const Spacer(),
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text(
                  'Avilable on : ',
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (projectUtils.githubLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [projectUtils.githubLink]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Image.asset(
                        'assets/github.png',
                        width: 18,
                      ),
                    ),
                  ),
                if (projectUtils.webLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod('open', [projectUtils.webLink]);
                    },
                    child: Image.asset(
                      'assets/web_icon.png',
                      width: 18,
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
