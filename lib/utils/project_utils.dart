class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;

  ProjectUtils(
      {required this.image, required this.title, required this.subtitle});
}

// Hobby Projects
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/tasked.png',
      title: 'Tasked',
      subtitle: 'a To Do List App'),
];

// Work Projects
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/big_cart.png',
      title: 'Grocery',
      subtitle: 'a Shoping App'),
  ProjectUtils(
      image: 'assets/projects/dogdom.png',
      title: 'Dogdom',
      subtitle: 'a pet App'),
];
