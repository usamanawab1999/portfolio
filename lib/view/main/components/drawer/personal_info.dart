import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding/2,),
        const AreaInfoText(title: 'Contact', text: '+923134514778'),
        const AreaInfoText(title: 'Email', text: 'usamanawab1999@gmail.com'),
        GestureDetector(
            onTap: (){
              launchUrl(Uri.parse('https://pk.linkedin.com/in/usama-nawab-18a68b186?trk=people-guest_people_search-card'));
            },
            child: AreaInfoText(title: 'LinkedIn', text: '@usama-nawab')),
        GestureDetector(

            onTap: (){
              launchUrl(Uri.parse('https://github.com/usamanawab1999/'));
            },
            child: const AreaInfoText(title: 'Github', text: '@usama-nawab')),
        const SizedBox(
          height: defaultPadding,
        ),
        const Text('Skills',style: TextStyle(color: Colors.white),),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
