import 'package:flutter/material.dart';
import 'package:portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
          icon: 'assets/icons/linkedin.svg',
          onTap:
              () => launchUrl(
                Uri.parse(
                  'https://pk.linkedin.com/in/usama-nawab-18a68b186?trk=people-guest_people_search-card',
                ),
              ),
        ),

        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap:
              () => launchUrl(Uri.parse('https://github.com/usamanawab1999/')),
        ),
        // const SocialMediaIcon(icon: 'assets/icons/dribble.svg',),
        // const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
        // const SocialMediaIcon(icon: 'assets/icons/linkedin.svg'),
      ],
    );
  }
}
