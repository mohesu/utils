import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher_string.dart';

import 'custom_container.dart';


class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      radius: 0,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              'Social Media',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 1.3,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <List>[
              [FontAwesomeIcons.github, 'https://github.com/mohesu'],
              [
                FontAwesomeIcons.youtube,
                'https://www.youtube.com/channel/UCTlfac169MDrl3q6VJFIdNw'
              ],
              [FontAwesomeIcons.twitter, 'https://twitter.com/'],
              [
                FontAwesomeIcons.linkedin,
                'https://www.linkedin.com/in/mohesu/'
              ],
            ]
                .map(
                  (e) => Tooltip(
                    message: 'Visit ${e.last}',
                    child: IconButton(
                      color: Theme.of(context).colorScheme.onPrimary,
                      icon: Icon(
                        e.first as IconData,
                        size: 30,
                      ),
                      mouseCursor: MaterialStateMouseCursor.clickable,
                      onPressed: () async {
                        if (await canLaunchUrlString(e.last)) {
                          await launchUrlString(e.last);
                        }
                      },
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
