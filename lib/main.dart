import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KPMG Assessment Replica',
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Roboto',
      ),
      home: const AssessmentScreen(),
    );
  }
}

class AssessmentQuestion {
  final String questionType;
  final String prompt;
  final List<String> options;
  final int? correctIndex;

  const AssessmentQuestion({
    required this.questionType,
    required this.prompt,
    required this.options,
    this.correctIndex,
  });
}

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  static const List<AssessmentQuestion> _questionBank = [
    AssessmentQuestion(
      questionType: 'VERBAL REASONING',
      prompt:
          'In comparison to the drivers who live in Mountainview, a greater proportion of the drivers who live in Oak Valley exceed the speed limit regularly. This explains why there are more accidents each year in Oak Valley than in Mountainview. All of the following statements, if true, weaken the conclusion drawn above EXCEPT:',
      options: [
        'Oak Valley has a greater proportion of blind intersections and sharp turns than has Mountainview.',
        'There is a greater number of drivers in Oak Valley than in Mountainview.',
        'Drivers in Mountainview must travel to Oak Valley to shop and work.',
        'Per capita, there are fewer police officers monitoring traffic in Oak Valley than there are in Mountainview.',
        'The roads are icier for a greater portion of the year in Oak Valley than in Mountainview.',
      ],
      correctIndex: 1,
    ),
    AssessmentQuestion(
      questionType: 'CRITICAL REASONING',
      prompt:
          'New Technology now makes it feasible for computer call-in help desk services to route calls they receive to almost anywhere, theoretically allowing employees to work from home, without the need for a daily commute. The adoption of this policy would be most likely to increase productivity if employees did not .',
      options: [
        'Commute from a distance of fewer than 10 miles.',
        'Commute by car as opposed to by rail',
        'Live in areas with dependable phone service.',
        'Need to consult frequently with each other to solve callers\' problems.',
        'Have more than one telephone line.',
      ],
      correctIndex: 3,
    ),
    AssessmentQuestion(
      questionType: 'CRITICAL REASONING',
      prompt:
          'Homeowners aged 40 and 50 are more likely to purchase ice cream and are more likely to purchase it in larger amounts than are members of any other demographic group. The popular belief that teenagers eat more ice cream than adults must, therefore, be false. The agreement is flawed primarily because the author',
      options: [
        'Fails to distinguish between purchasing and consuming',
        'Does not supply information about homeowners in age groups other than 40 and 50',
        'Depends on popular belief rather than on documented research findings',
        'Does not specify the precise amount of ice cream purchased by any demographic group',
        'Discusses ice cream rather than more nutritious and healthful foods.',
      ],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'VERBAL REASONING',
      prompt:
          'A bullet train travels in excess of 150 miles per hour. Therefore, if a train travels slower than 150 miles per hour, it is not a bullet train. Which of the following most closely parallels the reasoning used in the argument above?',
      options: [
        'An orange ripens only on the vine. If it ripens on the vine, then it is not an orange.',
        'Newspapers are often read by more than one person. Therefore, magazines are also likely to be read by more than one person.',
        'An earthquake of 5.0 or above on the Richter scale causes massive damage. If there is not a massive damage, then the earthquake did not attain a 5.0 or above.',
        'A supersonic plane travels at speeds in excess of Mach 1. If it is not supersonic, then it will travel at speeds below Mach 1.',
        'Fluoride generally prevents cavities. If there are no cavities, then there was no fluoride used.',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'REASONING 2',
      prompt:
          'Kale has more nutritional value than spinach. But since collard greens have more nutritional value than lettuce, it follows that kale has more nutritional value than lettuce. Any of the following if introduced into the argument as an additional premise, makes the argument above logically correct:',
      options: [
        'Spinach has more nutritional value than lettuce',
        'Spinach has more nutritional value than collard greens',
        'Collard greens have more nutritional value than Kale',
        'Spinach and collard greens have the same nutritional value.',
        'Kale and collard greens have the same nutritional value.',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'CRITICAL REASONING',
      prompt:
          'In the past, most children who went sledding in the winter snow in Verland used wooden sleds with runners and steering bars. Ten years ago, smooth plastic sleds became popular, they go faster than wooden sleds but are harder to steer and slow. The concern that plastic sleds are more dangerous is clearly borne out by the fact that the number of children injured while sledding was much higher last winter than was 10 years ago. Which of the following, if true in Verland, most seriously undermines the force of evidence cited.',
      options: [
        'A few children still use traditional wooden sleds',
        'Very few children wear any kind of protective gear, such as helmets, while sleeping.',
        'Plastic sleds can be used in a much wider variety of snow conditions than wooden sleds',
        'Most sledding injuries occur when a sled collides with a tree, a rock or another sled.',
        'Because the traditional wooden sleds can carry more than one rider, an accident involving a wooden sled can result in several children being injured.',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'CRITICAL REASONING',
      prompt:
          'Wood smoke contains dangerous toxins that cause changes in human cells. Because wood smoke presents such a high health risk, legislation is needed to regulate the use of open-air fires and wood burning stoves. Which of the following, if true, provides the most support for the argument above?',
      options: [
        'The amount of dangerous toxins contained in wood smoke is much less than the amount contained in an equal volume of automobile exhaust',
        'Within the jurisdiction covered by the proposed legislation, most heating and cooking is done with oil or natural gas.',
        'Smoke produced by coal-burning stoves is significantly more toxic than smoke from wood-burning stoves.',
        'No significant beneficial effect on air quality would result if open-air fires were banned within the jurisdiction covered by the proposed legislation.',
        'In valleys where wood is used as the primary heating fuel, the concentration of smoke results in poor air quality.',
      ],
      correctIndex: 4,
    ),
    AssessmentQuestion(
      questionType: 'CRITICAL REASONING',
      prompt:
          'For a trade embargo against a particular country to succeed, a high degree of both international accord and ability to prevent goods from entering or leaving that country must be sustained. A total blockade of Partia\'s ports is necessary to an embargo, but such an action would be likely to cause international discord over the embargo. The claims above, if true, most strongly support which of the following conclusions?',
      options: [
        'The balance of opinion is likely to favor Partia in the event of a blockade.',
        'As long as international opinion is unanimously against Partia, a trade embargo is likely to succeed.',
        'A naval blockade of Partia\'s ports would ensure that no goods enter or leave Partia',
        'Any trade embargo against Partia would be likely to fail at some point',
        'For a blockade of Partia\'s ports to be successful, international opinion must be unanimous.',
      ],
      correctIndex: 3,
    ),
    AssessmentQuestion(
      questionType: 'READING COMPREHENSION',
      prompt:
          'In 2023 services moved ahead of manufacturing as the main product of the Indian economy. But what is meant by “services”? Some economists define a service as something that is produced and consumed simultaneously, for example, a haircut. The broader, classical definition is that a service is an intangible something that cannot be touched or stored. Yet electric utilities can store energy, and computer programmers save information electronically. Thus, the classical definition is hard to sustain. The Indian government’s definition is more practical: services are the residual category that includes everything that is not agriculture or industry. Under this definition, services includes activities as diverse as engineering and driving a bus. However, besides lacking a strong conceptual framework, this definition fails to recognize the distinction between service industries and service occupations. It categorizes workers based on their company’s final product rather than on the actual work of the employees perform. Thus, the many service workers employed by manufacturers—bookkeepers or janitors, for example would fall under the industrial rather than the services category. Such ambiguities reveal the arbitrariness of this definition and suggest that, although practical for government purposes, it does not accurately reflect the composition of the current Indian economy. The author of the passage is primarily concerned with',
      options: [
        'Discussing research data underlying several definitions',
        'Arguing for the adoption of a particular definition',
        'Exploring definitions of a concept',
        'Comparing the advantages of several definitions',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'READING COMPREHENSION',
      prompt:
          'In comparing the Indian government\'s definition of services with the classical definition, the author suggests that the classical definition is',
      options: [
        'more pragmatic',
        'less ambiguous',
        'more widely used',
        'more arbitrary',
        'more difficult to apply',
      ],
      correctIndex: 4,
    ),
    AssessmentQuestion(
      questionType: 'READING COMPREHENSION',
      prompt:
          'The passage suggests which of the following about the service workers in India?',
      options: [
        'The number of service workers may be underestimated by the definition of services used by the government.',
        'There were fewer service workers than agricultural workers before 2023',
        'The number of service workers was almost equal to the number of workers employed in manufacturing until 2023',
        'Most service workers are employed in service occupations rather than in service industries.',
        'Most service workers are employed in occupations where they provide services that do not fall under the classical definition of services.',
      ],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'READING COMPREHENSION',
      prompt:
          'The author refers to "service workers employed by manufacturers" (line 13) primarily in order to point.',
      options: [
        'A type of worker not covered by the Indian government\'s system of classifying occupations',
        'A factor that has influenced the growth of the service economy in India.',
        'A type of worker who is classified on the basis of work performed rather than on the basis of the company\'s final product.',
        'A flaw in the Indian government\'s definition of services.',
        'The diversity of the workers who are referred to as service workers',
      ],
      correctIndex: 3,
    ),
    AssessmentQuestion(
      questionType: 'READING COMPREHENSION',
      prompt:
          'The author of the passage mentions which of the following as one disadvantage of the Indian government\'s definition of services?',
      options: [
        'It is less useful than other definitions mentioned in the passage',
        'It is narrower in scope than the other definitions mentioned in the passage.',
        'It is based on the final product produced rather than on the type of work performed.',
        'It does not recognize the diversity of occupations within the service industries.',
        'It misclassifies many workers who are employed in service industries.',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'LOGIC',
      prompt:
          'The statement "If it is raining, then the ground is wet" is given. If we know that the ground is not wet, what can we logically conclude?',
      options: [
        'It is raining.',
        'It is not raining.',
        'The ground is wet.',
        'We cannot conclude anything about the rain.',
      ],
      correctIndex: 1,
    ),
    AssessmentQuestion(
      questionType: 'LOGIC',
      prompt:
          'All birds have feathers. Penguins are birds. Therefore, penguins have feathers. This is an example of:',
      options: [
        'Logical deduction.',
        'Deductive reasoning.',
        'A valid argument.',
        'Sound logic.',
      ],
      correctIndex: 1,
    ),
    AssessmentQuestion(
      questionType: 'ARGUMENTATION',
      prompt:
          'A politician claims that a new policy will reduce unemployment by 5% within a year. However, the policy also involves significant tax increases. What is a potential counterargument to the politician\'s claim?',
      options: [
        'Tax increases could slow job creation and economic expansion.',
        'The policy might spur job growth through new investments.',
        'Unemployment rates can fluctuate naturally over time.',
        'A 5% reduction in unemployment is quite ambitious.',
      ],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'TRADE-OFF',
      prompt:
          'Advocates for stricter environmental regulations argue that increased pollution leads to higher healthcare costs. Opponents claim that stricter regulations stifle economic growth. If both arguments are considered, which of the following represents a potential trade-off?',
      options: [
        'Improved public health may come at the cost of slower economic growth.',
        'Economic expansion inherently requires environmental degradation.',
        'Stricter regulations could enhance public health while potentially moderating economic expansion.',
        'Environmental policies do not influence public health or economic conditions.',
      ],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'CORRELATION',
      prompt:
          'A survey indicated that 70% of people who exercise regularly report feeling happier. This suggests that:',
      options: [
        'Regular exercise may contribute to increased feelings of happiness.',
        'Happier individuals might be more inclined to exercise regularly.',
        'A link exists between consistent physical activity and reported happiness.',
        'Exercise is a significant factor in boosting overall happiness.',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'DATA ANALYSIS',
      prompt:
          'A company reported that its sales increased by 20% in the first quarter and then decreased by 20% in the second quarter. The company\'s overall profit margin remained the same. What can be inferred about the company\'s sales volume in the second quarter compared to the first quarter?',
      options: [
        'The sales volume was lower in the second quarter.',
        'The sales volume remained the same in both quarters.',
        'The sales volume cannot be determined from the given information.',
        'The sales volume was higher in the second quarter.',
      ],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'LOGIC',
      prompt:
          'If a person is a doctor, they must have attended medical school. John has attended medical school. Which of the following statements is a valid inference?',
      options: [
        'John may not be a doctor.',
        'Medical school attendance ensures doctor status.',
        'John is certainly a doctor.',
        'John might be a doctor.',
      ],
      correctIndex: 3,
    ),
    AssessmentQuestion(
      questionType: 'PERCENTAGES',
      prompt:
          'The price of gasoline increased by 10% last month. This month, the price decreased by 10%. What was the net change in the price of gasoline over the two months?',
      options: [
        'The net change cannot be determined without knowing the original price.',
        'The price is 1% lower than the original price.',
        'The price returned to its original value.',
        'The price is 1% higher than the original price.',
      ],
      correctIndex: 1,
    ),
    AssessmentQuestion(
      questionType: 'WORKPLACE',
      prompt:
          'A recent study found that the more hours employees spent on social media during work, the lower their productivity was. Based on this finding, what conclusion can be logically drawn?',
      options: [
        'Decreasing social media use at work may potentially boost employee productivity levels.',
        'Social media use is one contributing factor to productivity declines in the workplace.',
        'The study suggests a correlation between social media use and productivity, not definitively causation.',
        'Less productive employees might be more inclined to use social media during work hours.',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'LOGIC',
      prompt:
          'All engineers are logical thinkers. Sarah is a logical thinker. What can be definitively concluded about Sarah?',
      options: [
        'Sarah is an engineer.',
        'Sarah is not an engineer.',
        'All logical thinkers are engineers.',
        'Sarah might be an engineer.',
      ],
      correctIndex: 3,
    ),
    AssessmentQuestion(
      questionType: 'AVERAGE SPEED',
      prompt:
          'A runner completes a 10 km race in 40 minutes. What is their average speed in km/h?',
      options: ['15 km/h', '12.5 km/h', '20 km/h', '17.5 km/h'],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'PERCENTAGES',
      prompt:
          'If a company\'s revenue grows by 15% one year and then declines by 10% the next year, what is the overall percentage change in revenue over the two years?',
      options: [
        '5% increase',
        '1.5% increase',
        '3.5% increase',
        '2.5% increase',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'SET THEORY',
      prompt:
          'A survey of 1000 people revealed that 700 own a smartphone, 400 own a tablet, and 200 own neither. How many people own both a smartphone and a tablet?',
      options: ['300 people', 'Exactly 400', 'Just 100', 'A total of 200'],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'PERCENTAGES',
      prompt:
          'If a number is increased by 20% and then decreased by 20%, what is the net percentage change?',
      options: ['4% increase', 'No change', '2% decrease', '4% decrease'],
      correctIndex: 3,
    ),
    AssessmentQuestion(
      questionType: 'AVERAGE',
      prompt:
          'A researcher is calculating the mean of a dataset. If the sum of all observations is 750 and there are 15 observations, what is the mean?',
      options: ['45', '50', '60', '55'],
      correctIndex: 1,
    ),
    AssessmentQuestion(
      questionType: 'PROBABILITY',
      prompt:
          'In a class, 70% of students passed in Mathematics, 60% passed in Science, and 50% passed in both. What percentage of students failed in both subjects?',
      options: ['0.1', '0.4', '0.2', '0.3'],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'AVERAGE SPEED',
      prompt:
          'A train travels from City A to City B at a speed of 60 km/h and returns from City B to City A at a speed of 80 km/h. What is the average speed for the entire journey?',
      options: ['68.57 km/h', '70 km/h', '75 km/h', '69.23 km/h'],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'AVERAGE SPEED',
      prompt:
          'A car travels the first 100 km of a journey at 50 km/h and the next 100 km at 75 km/h. Calculate the average speed for the entire 200 km journey.',
      options: [
        'Approximately 60 km/h',
        'A speed of 65 km/h',
        'Around 58.3 km/h',
        'Precisely 62.5 km/h',
      ],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'EUROPEAN UNION',
      prompt:
          'All but one of the below countries is not bound by the European Union Treaties?',
      options: ['Denmark', 'Luxembourg', 'Cyprus', 'Germany', 'Slovakia'],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'STATISTICS',
      prompt:
          'If the mean of a dataset is 50 and the standard deviation is 5, and each data point is multiplied by 3, what will be the new mean and standard deviation?',
      options: [
        'New mean 150, new SD 5',
        'Mean 50, SD 15',
        'Mean 50, SD 5',
        'Mean 150, SD 15',
      ],
      correctIndex: 3,
    ),
    AssessmentQuestion(
      questionType: 'ECOWAS',
      prompt: 'Which of the following is a specialised agency of ECOWAS?',
      options: [
        'West African Monetary Institute',
        'Community Court of Justice',
        'ECOWAS Bank for Investment and Development',
        'ECOWAS Commission',
        'West African Health Organisation',
      ],
      correctIndex: 4,
    ),
    AssessmentQuestion(
      questionType: 'UN',
      prompt: 'Which of the following is a not an organ of the United Nations',
      options: [
        'The Executive Council',
        'The International Court of Justice',
        'The Economic and Social Council',
        'The UN Secretariat',
        'The Trusteeship Council',
      ],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'TRADE',
      prompt:
          'Which organization(s) suggested alternative trade alignments due to U.S. tariff pressures?',
      options: ['OECD', 'WTO', 'COMESA', 'UNCTAD', 'None of the above'],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'AFRICAN UNION',
      prompt:
          'The supreme organ of the African Union responsible for the determining and monitoring the implementation of policies is called________.',
      options: [
        'The Executive Council',
        'The Peace and Security Council',
        'The Assembly of the Union',
        'African Union Commission',
        'The Pan-African Parliament',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'GLOBAL ECONOMY',
      prompt:
          'Which global power was described as an "electrostate" due to mastery of the electric tech stack?',
      options: ['Japan', 'A and C', 'South Korea', 'Finland', 'China'],
      correctIndex: 4,
    ),
    AssessmentQuestion(
      questionType: 'TECH POLICY',
      prompt:
          'Which two tech giants faced jury verdicts that could reshape Section 230 protections?',
      options: [
        'Apple & Amazon',
        'Netflix & Tesla',
        'Meta & Google',
        'Tesla & Meta',
        'IBM & Intel',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'FINANCE',
      prompt: 'What is the full meaning of IBRD?',
      options: [
        'Independent Body of Risk Devolution',
        'Independent Body for Risk Devolution',
        'International Bank for Reconstruction & Development',
        'International Bank of Reconstruction & Development',
        'None of the Above',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'TECHNOLOGY',
      prompt:
          'Which new material(s) breakthrough could supercharge 6G technology?',
      options: [
        'Graphene Foam',
        'Carbon Nanotube Coating',
        'Liquid Metal Chips',
        'Quantum Fibre Mesh',
        'A, B, & C',
      ],
      correctIndex: 4,
    ),
    AssessmentQuestion(
      questionType: 'EV INDUSTRY',
      prompt:
          'Which African country became a key node in global EV battery supply chains due to rising Chinese industrial investment by 2026?',
      options: ['Morocco', 'South Africa', 'Egypt', 'Zambia', 'Nigeria'],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'SENTENCE CORRECTION',
      prompt:
          'As contrasted with the honeybee, the yellow jacket can sting repeatedly without dying and carries a potent venom that can cause intense pain.',
      options: [
        'As contrasted with the honeybee,',
        'In contrast to the honeybee\'s,',
        'Unlike the sting of the honeybee,',
      ],
      correctIndex: 2,
    ),
    AssessmentQuestion(
      questionType: 'SENTENCE CORRECTION',
      prompt:
          'Quasars, at billions of light years from Earth the most distant observable objects in the universe, believed to be the cores of galaxies in an early stage of development.',
      options: [
        'believed to be',
        'some believe them to be',
        'some believe they are',
        'are believed to be',
      ],
      correctIndex: 3,
    ),
    AssessmentQuestion(
      questionType: 'SENTENCE CORRECTION',
      prompt:
          'The commission has directed advertisers to restrict the use of the word "natural" to foods that do not contain color or flavor additives, chemical preservatives, or nothing that has been synthesized.',
      options: [
        'Or anything that has been',
        'Or nothing that has been',
        'Or that has been',
        'And nothing that is',
      ],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'SENTENCE CORRECTION',
      prompt:
          'A pioneer journalist, Nellie Bly\'s exploits included circling the globe faster than Jules Verne\'s fictional Phileas Fogg.',
      options: [
        'A pioneer journalist, Nellie Bly\'s exploits included',
        'The exploits of Nellie Bly, a pioneer journalist including in her exploits the',
        'Nellie Bly was a pioneer journalist including in her exploits the',
        'Included in the pioneer journalist Nellie Bly\'s exploits are',
      ],
      correctIndex: 0,
    ),
    AssessmentQuestion(
      questionType: 'LOGIC',
      prompt:
          'Luis is taller than Rei. Kiko is taller than Marcus. Therefore, Kiko is taller than Rei. The conclusion drawn above is not supported by the argument, however the addition of another piece of information would make the conclusion logically sound. All of the following could be that additional piece of information EXCEPT',
      options: [
        'Kiko is taller than Luis',
        'Luis is taller than Marcus',
        'Luis and Marcus are the same height.',
        'Marcus and Rei are the same height.',
      ],
      correctIndex: 1,
    ),
  ];

  int _currentIndex = 0;
  final Map<int, int> _selectedAnswers = {};
  bool _showResults = false;
  bool _showInstructions = true;
  bool _timedMode = false;
  bool _instantFeedbackMode = false;
  int _timeRemaining = 60;
  Timer? _timer;

  int get questionCount => _questionBank.length;

  int get answeredCount => _selectedAnswers.length;

  void _startTimer() {
    _timer?.cancel();

    if (!_timedMode) {
      return;
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!mounted) {
        _timer?.cancel();
        return;
      }

      if (_timeRemaining <= 1) {
        _timer?.cancel();
        if (mounted) {
          setState(() {
            _timeRemaining = 0;
          });
          _finishAssessment(forceSubmit: true);
        }
        return;
      }

      setState(() {
        _timeRemaining--;
      });
    });
  }

  void _advanceQuestion({bool forceSkip = false}) {
    if (_currentIndex >= _questionBank.length - 1) {
      _finishAssessment(forceSubmit: forceSkip);
      return;
    }

    _timer?.cancel();
    setState(() {
      _currentIndex++;
      if (_timedMode) {
        _timeRemaining = 60;
      }
    });
    if (_timedMode) {
      _startTimer();
    }
  }

  void _skipQuestion() {
    _advanceQuestion(forceSkip: true);
  }

  void _selectOption(int optionIndex) {
    if (_selectedAnswers.containsKey(_currentIndex) && _instantFeedbackMode) {
      return;
    }

    _timer?.cancel();
    setState(() {
      _selectedAnswers[_currentIndex] = optionIndex;
    });

    if (_instantFeedbackMode) {
      return;
    }

    _advanceQuestion();
  }

  void _beginAssessment({
    required bool timedMode,
    required bool instantFeedbackMode,
  }) {
    setState(() {
      _timedMode = timedMode;
      _instantFeedbackMode = instantFeedbackMode;
      _showInstructions = false;
      _showResults = false;
      _currentIndex = 0;
      _selectedAnswers.clear();
      _timeRemaining = 60;
    });
    if (_timedMode) {
      _startTimer();
    }
  }

  void _startSelectedAssessment() {
    _beginAssessment(
      timedMode: _timedMode,
      instantFeedbackMode: _instantFeedbackMode,
    );
  }

  void _restart() {
    _timer?.cancel();
    setState(() {
      _currentIndex = 0;
      _selectedAnswers.clear();
      _showResults = false;
      _showInstructions = true;
      _timedMode = false;
      _instantFeedbackMode = false;
      _timeRemaining = 60;
    });
  }

  int get unansweredCount => questionCount - _selectedAnswers.length;

  List<int> get unansweredIndices {
    final indices = <int>[];
    for (var i = 0; i < questionCount; i++) {
      if (!_selectedAnswers.containsKey(i)) {
        indices.add(i);
      }
    }
    return indices;
  }

  void _finishAssessment({bool forceSubmit = false}) {
    final unanswered = unansweredCount;
    if (!forceSubmit && unanswered > 0) {
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text('Unanswered questions'),
          content: Text(
            'You have $unanswered unanswered question${unanswered == 1 ? '' : 's'}. Would you like to review them or submit your test?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                final reviewIndex = unansweredIndices.first;
                setState(() {
                  _currentIndex = reviewIndex;
                });
              },
              child: const Text('Review'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _timer?.cancel();
                setState(() {
                  _showResults = true;
                });
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      );
      return;
    }

    _timer?.cancel();
    setState(() {
      _showResults = true;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobile = screenWidth < 700;
    final shellWidth = screenWidth < 760 ? screenWidth - 24 : 1120.0;
    final shellWidthClamped = shellWidth.clamp(300.0, 1120.0);

    if (_showInstructions) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: shellWidthClamped,
            constraints: const BoxConstraints(maxHeight: 680),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFdfe7ee), width: 2),
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 18,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(screenWidth < 760 ? 20 : 40),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'KPMG',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF133b7a),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Assessment Instructions',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'Please read each question carefully and choose the best answer from the options provided.\n\n'
                      '• You may complete the assessment in timed or untimed mode.\n'
                      '• In timed mode, each question gives you 1 minute.\n'
                      '• You may skip any question and continue when ready.\n'
                      '• At the end, you will see your score and percentage out of 100.',
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.6,
                        color: Color(0xFF243447),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Wrap(
                      spacing: 18,
                      runSpacing: 18,
                      children: [
                        SizedBox(
                          width: 235,
                          child: _ModeCard(
                            title: 'Timed',
                            subtitle: 'Instant feedback',
                            selected: _timedMode && _instantFeedbackMode,
                            onTap: () {
                              setState(() {
                                _timedMode = true;
                                _instantFeedbackMode = true;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 235,
                          child: _ModeCard(
                            title: 'Timed',
                            subtitle: 'Feedback at end',
                            selected: _timedMode && !_instantFeedbackMode,
                            onTap: () {
                              setState(() {
                                _timedMode = true;
                                _instantFeedbackMode = false;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 235,
                          child: _ModeCard(
                            title: 'Untimed',
                            subtitle: 'Instant feedback',
                            selected: !_timedMode && _instantFeedbackMode,
                            onTap: () {
                              setState(() {
                                _timedMode = false;
                                _instantFeedbackMode = true;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 235,
                          child: _ModeCard(
                            title: 'Untimed',
                            subtitle: 'Feedback at end',
                            selected: !_timedMode && !_instantFeedbackMode,
                            onTap: () {
                              setState(() {
                                _timedMode = false;
                                _instantFeedbackMode = false;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: _startSelectedAssessment,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0d4bcc),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(220, 54),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Begin Assessment',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    final question = _questionBank[_currentIndex];
    final questionTypeLabel = question.questionType == 'SENTENCE CORRECTION'
        ? 'VERBAL (SENTENCE CORRECTION)'
        : question.questionType.toUpperCase();

    if (_showResults) {
      final score = _questionBank.where((item) {
        final index = _selectedAnswers[_questionBank.indexOf(item)];
        return index != null && item.correctIndex == index;
      }).length;

      final percentage = ((score / questionCount) * 100).toStringAsFixed(1);

      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: shellWidthClamped,
            constraints: const BoxConstraints(maxHeight: 760),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFdfe7ee), width: 2),
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 18,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(screenWidth < 760 ? 16 : 24),
              child: Column(
                children: [
                  const Text(
                    'KPMG',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF133b7a),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'ASSESSMENT COMPLETE',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'You answered $answeredCount / $questionCount questions.',
                    style: const TextStyle(
                      fontSize: 22,
                      color: Color(0xFF1d2733),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Correct answers: $score',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1d2733),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Percentage: $percentage%',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0d4bcc),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: questionCount,
                      itemBuilder: (context, index) {
                        final item = _questionBank[index];
                        final selectedIndex = _selectedAnswers[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 14),
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF8F9FB),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFFdfe7ee)),
                          ),
                          child: SelectionArea(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${index + 1}. ${item.prompt}',
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1F2430),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                ...List.generate(item.options.length, (
                                  optionIndex,
                                ) {
                                  final isCorrect =
                                      item.correctIndex == optionIndex;
                                  final isSelected = selectedIndex == optionIndex;
                                  final isWrongSelection =
                                      isSelected && !isCorrect;
                                  final borderColor = isCorrect
                                      ? Colors.green
                                      : isWrongSelection
                                      ? Colors.red
                                      : const Color(0xFFE6EAF1);
                                  final fillColor = isCorrect
                                      ? const Color(0xFFE8F7EE)
                                      : isWrongSelection
                                      ? const Color(0xFFFDECEC)
                                      : Colors.white;
                                  final letterBg = isCorrect
                                      ? Colors.green
                                      : isWrongSelection
                                      ? Colors.red
                                      : const Color(0xFFedf0f2);
                                  final letterText =
                                      isCorrect || isWrongSelection || isSelected
                                      ? Colors.white
                                      : const Color(0xFF243447);

                                  return Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: fillColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: borderColor,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 28,
                                          height: 28,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: letterBg,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Text(
                                            String.fromCharCode(65 + optionIndex),
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: letterText,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Text(
                                            item.options[optionIndex],
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF1F2430),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _restart,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0d4bcc),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(180, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Restart Assessment'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFEAF2F7),
      body: SafeArea(
        child: Center(
          child: Container(
            width: shellWidthClamped,
            padding: EdgeInsets.fromLTRB(
              isMobile ? 18 : 26,
              isMobile ? 18 : 22,
              isMobile ? 18 : 22,
              isMobile ? 16 : 18,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF2F7FA),
              border: Border.all(color: const Color(0xFFD6E1E8), width: 1.5),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            questionTypeLabel,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.0,
                              color: Color(0xFF325C89),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Question ${_currentIndex + 1} of $questionCount',
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1F3B5A),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog<void>(
                          context: context,
                          builder: (context) => Dialog(
                            backgroundColor: const Color(0xFFF8FBFE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 440),
                              child: Padding(
                                padding: const EdgeInsets.all(18),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Wrap(
                                      spacing: 10,
                                      runSpacing: 10,
                                      children: List.generate(questionCount, (index) {
                                        final isAnswered = _selectedAnswers.containsKey(index);
                                        final isCurrent = index == _currentIndex;
                                        return InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                            setState(() {
                                              _currentIndex = index;
                                            });
                                          },
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: isAnswered
                                                  ? const Color(0xFF0D4BCC)
                                                  : Colors.white,
                                              border: Border.all(
                                                color: isCurrent
                                                    ? const Color(0xFF0D4BCC)
                                                    : const Color(0xFFCBD8E2),
                                                width: isCurrent ? 2 : 1,
                                              ),
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child: isAnswered
                                                ? const Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                    size: 22,
                                                  )
                                                : Text(
                                                    '${index + 1}',
                                                    style: const TextStyle(
                                                      color: Color(0xFF1F3B5A),
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 110,
                        height: 52,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F9FC),
                          border: Border.all(color: const Color(0xFFBBD3E2)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${_currentIndex + 1}-$questionCount',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF0D4BCC),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF0D4BCC),
                              size: 22,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: const Color(0xFFD7E3EC),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.zero,
                    child: SelectionArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${_currentIndex + 1}. ${question.prompt}',
                            style: TextStyle(
                              fontSize: isMobile ? 20 : 26,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF1F2F3D),
                              height: 1.35,
                            ),
                          ),
                          const SizedBox(height: 18),
                          const Text(
                            'Select one answer.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF4E6272),
                            ),
                          ),
                          const SizedBox(height: 18),
                          ...List.generate(question.options.length, (index) {
                            final letter = String.fromCharCode(65 + index);
                            final selected = _selectedAnswers[_currentIndex] == index;
                            final isCorrectOption = question.correctIndex == index;
                            final showReveal =
                                _instantFeedbackMode &&
                                _selectedAnswers.containsKey(_currentIndex);
                            return _AssessmentOptionButton(
                              letter: letter,
                              label: question.options[index],
                              selected: selected,
                              isCorrectAnswer: isCorrectOption,
                              showCorrectAnswer: showReveal,
                              onTap: () => _selectOption(index),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Expanded(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: OutlinedButton(
                          onPressed: _skipQuestion,
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(0, 46),
                            foregroundColor: const Color(0xFF0d4bcc),
                            side: const BorderSide(color: Color(0xFFdfe7ee)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                          ),
                          child: const Text(
                            'Skip for later',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: ElevatedButton(
                          onPressed: _instantFeedbackMode
                              ? () {
                                  if (_selectedAnswers.containsKey(_currentIndex)) {
                                    _advanceQuestion();
                                  }
                                }
                              : _advanceQuestion,
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(0, 46),
                            backgroundColor: const Color(0xFF0d4bcc),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                          ),
                          child: const Text(
                            'Continue →',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: OutlinedButton(
                          onPressed: _finishAssessment,
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(0, 46),
                            foregroundColor: const Color(0xFF0d4bcc),
                            side: const BorderSide(color: Color(0xFF0d4bcc)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                          ),
                          child: const Text(
                            'End Assessment',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AssessmentOptionButton extends StatefulWidget {
  const _AssessmentOptionButton({
    required this.letter,
    required this.label,
    required this.selected,
    required this.isCorrectAnswer,
    required this.showCorrectAnswer,
    required this.onTap,
  });

  final String letter;
  final String label;
  final bool selected;
  final bool isCorrectAnswer;
  final bool showCorrectAnswer;
  final VoidCallback onTap;

  @override
  State<_AssessmentOptionButton> createState() =>
      _AssessmentOptionButtonState();
}

class _AssessmentOptionButtonState extends State<_AssessmentOptionButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 120),
    lowerBound: 0.97,
    upperBound: 1.0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isWrongSelection =
        widget.showCorrectAnswer && widget.selected && !widget.isCorrectAnswer;
    final bool isCorrectChoice =
        widget.showCorrectAnswer && widget.isCorrectAnswer;
    final Color borderColor = isCorrectChoice
        ? Colors.green
        : isWrongSelection
        ? Colors.red
        : widget.selected
        ? const Color(0xFF0d4bcc)
        : const Color(0xFFD8E2EA);
    final Color fillColor = isCorrectChoice
        ? const Color(0xFFEAF8F1)
        : isWrongSelection
        ? const Color(0xFFFDECEC)
        : widget.selected
        ? const Color(0xFFEAF2FF)
        : const Color(0xFFEEF4F8);
    final Color letterBg = isCorrectChoice
        ? Colors.green
        : isWrongSelection
        ? Colors.red
        : widget.selected
        ? const Color(0xFF0d4bcc)
        : const Color(0xFFE3EAF0);
    final Color letterText =
        isCorrectChoice || isWrongSelection || widget.selected
        ? Colors.white
        : const Color(0xFF2A3E52);

    return GestureDetector(
      onTapDown: (_) => _controller.reverse(),
      onTapUp: (_) => _controller.forward(),
      onTapCancel: () => _controller.forward(),
      onTap: () {
        _controller.forward();
        widget.onTap();
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final scale = _controller.value;
          return Transform.scale(
            scale: scale,
            child: Container(
              constraints: const BoxConstraints(minHeight: 58),
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: fillColor,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: borderColor,
                  width: widget.selected || widget.showCorrectAnswer ? 1.8 : 1,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 34,
                    height: 34,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: letterBg,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: widget.selected || widget.showCorrectAnswer
                            ? Colors.transparent
                            : const Color(0xFFD8E2EA),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      widget.letter,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: letterText,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      widget.label,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1F2430),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ModeCard extends StatelessWidget {
  const _ModeCard({
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 130),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFFedf3ff) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected ? const Color(0xFF0d4bcc) : const Color(0xFFdfe7ee),
            width: selected ? 2 : 1,
          ),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: const Color(0xFF0d4bcc).withValues(alpha: 0.12),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.04),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: selected
                    ? const Color(0xFF0d4bcc)
                    : const Color(0xFF1d2733),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 16, color: Color(0xFF4f5d6a)),
            ),
          ],
        ),
      ),
    );
  }
}
