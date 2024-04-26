class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? githubLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.githubLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/website.jpg',
      title: 'Business Website',
      subtitle:
          'This website is created to get information about the vacancy in the comapny and hiring process',
      githubLink: '',
      webLink: 'https://ourfreelancercommunity.com'),
  ProjectUtils(
    image: 'assets/projects/coronaApp.jpeg',
    title: 'Corona Tracker App',
    subtitle:
        'This application mainly used to forecast the cases of corona virus',
    githubLink: 'https://github.com/Rakesh7714/CovidTracker-App',
  ),
  ProjectUtils(
    image: 'assets/projects/insta.jpeg',
    title: 'Instagram clone',
    subtitle: 'This is a clone of instagram Application',
    // githubLink:
    //     'https://play.google.com/store/apps/details?id=com.shohatech.todo',
    // iosLink: "https://apps.apple.com/us/app/eduza-todo/id6443970333",
  ),
  ProjectUtils(
    image: 'assets/projects/bmicalc.png',
    title: 'BMI Calculator App',
    subtitle:
        'It is used to screen for weight categories that may lead to health issue',
    githubLink: 'https://github.com/Rakesh7714/bmi_calculator_project',
    // iosLink: 'https://apps.apple.com/us/app/eduza-notepad/id6443973859',
  ),
  ProjectUtils(
    image: 'assets/projects/busticket.png',
    title: 'HamroBusTicket UI',
    subtitle: 'This is a Ui design of the busticket booking service.',
    githubLink: 'https://ourfreelancercommunity.com',
  ),
  ProjectUtils(
    image: 'assets/projects/electronicApp.jpg',
    title: 'Ecommerce Electronic App',
    subtitle:
        'This is an Ecommerce Application in which there is the electronic products.',
    githubLink: 'https://github.com/Rakesh7714/Electronic-shop-App',
    // iosLink:
    //     "https://apps.apple.com/us/app/eduza-english-dictionary/id6443770339",
  ),
];

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/quotes.png',
    title: 'Quotes Application',
    subtitle:
        'This is quotes application containing different quotes categories collection.',
    githubLink: 'https://github.com/Rakesh7714/Quotes-App',
    // webLink:
    //     "https://apps.apple.com/kr/app/%EC%98%81%EC%96%B4%EB%A8%B8%EB%A6%AC-%EA%B3%B5%EC%9E%91%EC%86%8C/id1507102714",
  ),
  ProjectUtils(
    image: 'assets/projects/pharmacynotes.png',
    title: 'Pharmacy Note Application',
    subtitle:
        'This is a pharmacy app containing notes related to pharmacy app.',
    // webLink: 'https://www.elo.best',
  ),
  ProjectUtils(
    image: 'assets/projects/chatgptc.png',
    title: 'Chatgpt clone',
    subtitle:
        'This is clone of the chatgpt function similar as the real one App',
    webLink: 'https://www.externally.unavailable.project',
  ),
];
