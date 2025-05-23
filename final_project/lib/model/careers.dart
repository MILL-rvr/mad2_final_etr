class Careers {
  final String title;
  final String content;
  final String image;

  Careers({
    required this.title, 
    required this.content, 
    required this.image
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'content': content,
      'image': image,
    };
  }
}

final List<Careers> career = [
    Careers(title: 'IT', content: 'Information Technology (IT) is the study and use of systems especially computers and telecommunications for storing, retrieving, and sending information. It plays a vital role in various industries by enabling data processing, communication, and automation. \n\nUnder IT, common courses or programs include: \n\n-Bachelor of Science in Information Technology (BSIT) \n-Computer Science \n-Information Systems \n-Cybersecurity \n-Software Engineering', image: 'assets/images/career/it.png'),
    Careers(title: 'Architecture',content: 'Architecture involves the art and science of designing buildings and other physical structures. It combines creativity with technical knowledge to create functional and aesthetically pleasing environments.\n\nCommon programs under Architecture include:\n\n- Bachelor of Science in Architecture\n- Urban Planning\n- Landscape Architecture\n- Interior Design',image: 'assets/images/career/architecture.png',),
    Careers(title: 'Engineering',content: 'Engineering applies scientific principles to design, build, and maintain structures, machines, and processes.\n\nPopular engineering fields include:\n\n- Civil Engineering\n- Mechanical Engineering\n- Electrical Engineering\n- Chemical Engineering\n- Computer Engineering',image: 'assets/images/career/engineering.png',),
    Careers(title: 'Education',content: 'Education is the process of facilitating learning and imparting knowledge and skills.\n\nCommon courses and roles in Education:\n\n- Bachelor of Elementary Education\n- Bachelor of Secondary Education\n- Special Education',image: 'assets/images/career/education.png',),
    Careers(title: 'Criminology',content: 'Criminology studies crime, criminals, and the criminal justice system to understand causes and prevention.\n\nTypical courses in Criminology include:\n\n- Criminology \n- Forensic Science\n- Law Enforcement\n- Corrections',image: 'assets/images/career/criminology.png',),
    Careers(title: 'Aviation',content: 'Aviation covers the operation of aircraft and air travel safety.\n\nCourses and careers in Aviation:\n\n- Pilot Training\n- Aircraft Maintenance\n- Air Traffic Control\n- Aviation Management\n- Flight Attendant',image: 'assets/images/career/aviation.png',),
    Careers(title: 'Medicine',content: 'Medicine focuses on diagnosing, treating, and preventing illnesses to promote health.\n\nPrograms under Medicine include:\n\n- Doctor of Medicine (MD)\n- Nursing\n- Pharmacy\n- Medical Technology',image: 'assets/images/career/medicine.png',),
    Careers(title: 'Law',content: 'Law involves the study and practice of rules to maintain justice and order.\n\nTypical courses in Law:\n\n- Bachelor of Laws (LLB)\n- Legal Management\n- Paralegal Studies',image: 'assets/images/career/law.png',),
    Careers(title: 'Business',content: 'Business encompasses the management and operation of companies and organizations.\n\nCommon business programs:\n\n- Business Administration\n- Marketing\n- Accounting\n- Entrepreneurship\n- Finance',image: 'assets/images/career/business.png',),
    Careers(title: 'Hospitality Management',content: 'Hospitality Management involves overseeing services in hotels, restaurants, and tourism.\n\nCourses include:\n\n- Hotel and Restaurant Management\n- Tourism Management\n- Event Management',image: 'assets/images/career/hospitality_management.png',),
  ];