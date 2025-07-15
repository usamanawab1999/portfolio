import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;

  const ProjectLinks({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Text(
              'App Store',
              style: TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
            IconButton(
              onPressed: () {
                launchUrl(Uri.parse(projectList[index].appstore));
              },
              icon: Image.network(
                'https://cdn3d.iconscout.com/3d/free/preview/free-app-store-3d-icon-download-in-png-blend-fbx-gltf-file-formats--apple-logo-application-macos-pack-user-interface-icons-8219392.png?f=webp&h=700',
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            TextButton(
              onPressed: () {
                launchUrl(Uri.parse(projectList[index].playStore));
              },
              child: const Text(
                'Play Store',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                launchUrl(Uri.parse(projectList[index].playStore));
              },
              icon: Image.network(
                'https://static.vecteezy.com/system/resources/previews/022/484/501/non_2x/google-play-store-icon-logo-symbol-free-png.png',
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
