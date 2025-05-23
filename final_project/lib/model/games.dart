class Games {
  final String question;
  final String answer;
  final String choices; 

  Games({
    required this.question, 
    required this.answer, 
    required this.choices,
    });
}

final List<Games> gameQuestions = [
  Games(
    question: "What does IT stand for?",
    answer: "Information Technology",
    choices: "Information Technology,Internet Technology,Internal Transfer,Initial Test",
  ),
  Games(
    question: "Which of these is NOT a course under Architecture?",
    answer: "Cybersecurity",
    choices: "Urban Planning,Interior Design,Cybersecurity,Landscape Architecture",
  ),
  Games(
    question: "Which engineering field involves designing and maintaining machines?",
    answer: "Mechanical Engineering",
    choices: "Mechanical Engineering,Civil Engineering,Law Enforcement,Pharmacy",
  ),
  Games(
    question: "Bachelor of Secondary Education falls under which career?",
    answer: "Education",
    choices: "Business,Education,Criminology,Medicine",
  ),
  Games(
    question: "What is studied in Criminology?",
    answer: "Crime and the criminal justice system",
    choices: "Designing buildings,Aircraft operation,Crime and the criminal justice system,Diagnosing illnesses",
  ),
  Games(
    question: "Which of the following is a course in Aviation?",
    answer: "Air Traffic Control",
    choices: "Marketing,Air Traffic Control,Accounting,Legal Management",
  ),
  Games(
    question: "Doctor of Medicine (MD) is a program under which career?",
    answer: "Medicine",
    choices: "Law,Medicine,Hospitality Management,Engineering",
  ),
  Games(
    question: "Which course relates to practicing rules to maintain justice?",
    answer: "Bachelor of Laws (LLB)",
    choices: "Hotel and Restaurant Management,Bachelor of Laws (LLB),Software Engineering,Flight Attendant",
  ),
  Games(
    question: "Which of these is NOT a typical business program?",
    answer: "Paralegal Studies",
    choices: "Marketing,Accounting,Paralegal Studies,Finance",
  ),
  Games(
    question: "What is a course under Hospitality Management?",
    answer: "Tourism Management",
    choices: "Nursing,Tourism Management,Computer Science,Urban Planning",
  ),
];
