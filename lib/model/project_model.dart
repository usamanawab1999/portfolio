class Project {
  final String name;
  final String description;
  final String image;
  final String playStore;
  final String appstore;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.playStore,
    required this.appstore,
  });
}

List<Project> projectList = [
  Project(
    name: 'Howwe',
    description:
        'Presenting "Howwe" – a dynamic social media app built with Flutter. It offers a vibrant platform for artists and users to connect through posts, reels, and live streaming. Users can explore artist profiles, watch performances, and even book them for shows and events. Designed with a modern, user-friendly UI, Howwe brings entertainment and opportunity together in one seamless experience.',
    image: 'assets/images/coffee.png',
    playStore:
        'https://play.google.com/store/apps/details?id=com.howwe.app&hl=en',
    appstore: 'https://apps.apple.com/us/app/howwe/id6449200491',
  ),
];
