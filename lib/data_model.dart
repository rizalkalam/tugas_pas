import 'dart:ui';

List<Map> data = [
  {
    // 'id': '1',
    'objectName': 'MERCURY',
    'objectPict': 'assets/Mercury.png',
    'objectDetail': 'Terestrial',
    'rotationsub': 'Length of Year: ',
    'rotation': '88 Days',
    'lengthOfDay': '1.408 Earth Hours',
    'lengthOfYear': '176 Days (One day full Day-Night cycle)',
    'surfaceTemp': '(Day) 800 °F (430 °C), (Night) -290 °F (-180 °C)',
    'radius': '1.516 Miles (2.440 Kilometers)',
    'distanceFromSun':
        '36 Million Miles (58 Million Kilometers) away from The Sun',
    'mass': '3.3011×10(23) kg',
    'moons': '0 (None)',
    'mainColor': Color.fromRGBO(92, 128, 255, 1)
  },
  {
    // 'id': '2',
    'objectName': 'VENUS',
    'objectPict': 'assets/Venus.png',
    'objectDetail': 'Terestrial',
    'rotationsub': 'Length of Year: ',
    'rotation': '225 Days',
    'lengthOfDay': '5.832 Earth Hours',
    'lengthOfYear': '225 Earth Days',
    'surfaceTemp': '900 °F (480 °C)',
    'radius': '7.520 Miles (12.100 Kilometers)',
    'distanceFromSun':
        '36 Million Miles (58 Million Kilometers) away from The Sun',
    'mass': '4.8673 x 10(24)kg',
    'moons': '0 (None)',
    'mainColor': Color.fromRGBO(255, 199, 0, 1)
  },
  {
    // 'id': '3',
    'objectName': 'EARTH',
    'objectPict': 'assets/Earth.png',
    'objectDetail': 'Terestrial',
    'rotationsub': 'Length of Year: ',
    'rotation': '365 Days',
    'lengthOfDay': '24 Hours',
    'lengthOfYear': '365.25 Earth Days',
    'surfaceTemp': '57 °F (13 °C)',
    'radius': '3.959 Miles (6.371 Kilometers)',
    'distanceFromSun':
        '93 Million Miles (150 Million Kilometers) away from The Sun',
    'mass': '5.9736 x 10(24) kg',
    'moons': '1 (One)',
    'mainColor': Color.fromRGBO(0, 163, 255, 1)
  },
  {
    // 'id': '4',
    'objectName': 'MARS',
    'objectPict': 'assets/Mars.png',
    'objectDetail': 'Terestrial',
    'rotationsub': 'Moons: ',
    'rotation': '2 Moons',
    'lengthOfDay': '24.6 Hours',
    'lengthOfYear': '687 Earth Days',
    'surfaceTemp': 'High 70 °F (20 °C), Low -225 °F (-153 °C)',
    'radius': '2.106 Miles (3.390 Kilometers)',
    'distanceFromSun':
        '142 Million Miles (228 Million Kilometers) away from The Sun',
    'mass': '5.9736 x 10(24) kg',
    'moons': '2 (Two)',
    'mainColor': Color.fromRGBO(255, 62, 0, 1)
  },
  {
    // 'id': '5',
    'objectName': 'JUPITER',
    'objectPict': 'assets/Jupiter.png',
    'objectDetail': 'Gas Giant',
    'rotationsub': 'Moons: ',
    'rotation': '79 Moons',
    'lengthOfDay': '9.93 Hours',
    'lengthOfYear': '4.333 Earth Days',
    'surfaceTemp': '-160 °F (-110 °C)',
    'radius': '43.440.7 Miles (69.911 Kilometers)',
    'distanceFromSun':
        '484 Million Miles (778 Million Kilometers) away from The Sun',
    'mass': '5.9736 x 10(24) kg',
    'moons': '80 (Eighty)',
    'mainColor': Color.fromRGBO(197, 154, 121, 1)
  },
  {
    // 'id': '6',
    'objectName': 'SATURN',
    'objectPict': 'assets/Saturn2.png',
    'objectDetail': 'Gas Giant',
    'rotationsub': 'Length of Days: ',
    'rotation': '10k Days',
    'lengthOfDay': '10.7 Hours',
    'lengthOfYear': '10.759 Earth Days',
    'surfaceTemp': '-300 °F (-185 °C)',
    'radius': '36.183.7 Miles (58.232 Kilometers)',
    'distanceFromSun':
        '886 Million Miles (1.4 Billion Kilometers) away from The Sun',
    'mass': '5.68 x 10(26) kg',
    'moons': '83 (Eighty Three)',
    'mainColor': Color.fromRGBO(150, 125, 96, 1)
  },
  {
    // 'id': '7',
    'objectName': 'URANUS',
    'objectPict': 'assets/Uranus.png',
    'objectDetail': 'Ice Giant',
    'rotationsub': 'Moons: ',
    'rotation': '27 Moons',
    'lengthOfDay': '17 Hours',
    'lengthOfYear': '30.687 Earth Days',
    'surfaceTemp': '320 °F (-195 °C)',
    'radius': '15,759.2 Miles (25,362 Kilometers)',
    'distanceFromSun': '1.8 Billion Miles (2.9 Billion Kilometers)',
    'mass': '8.6810 x 10(25) kg',
    'moons': '27 (Twenty Seven)',
    'mainColor': Color.fromRGBO(64, 243, 255, 1)
  },
  {
    // 'id': '8',
    'objectName': 'NEPTUNE',
    'objectPict': 'assets/Neptune.png',
    'objectDetail': 'Ice Giant',
    'rotationsub': 'Moons: ',
    'rotation': '27 Moons',
    'lengthOfDay': '16 Hours',
    'lengthOfYear': '60.190 Earth Days',
    'surfaceTemp': '-373 °F (-225 °C)',
    'radius': '15,299.4 Miles (24,622 Kilometers)',
    'distanceFromSun': '2.8 Billion Miles (4.5 Billion Kilometers)',
    'mass': '1.02×1026 kg',
    'moons': '14 (Fourteen)',
    'mainColor': Color.fromRGBO(138, 144, 255, 1)
  },
];

List<Map> data2 = [
  {
    'title': '15 things kids should know about space travel',
    'content':
        'Professional and amateur astronomers alike love to share facts about our amazing universe: “The brightest star is…,” “A black hole is…,” and lots more. These facts are so incredible that we sometimes overlook our own little corner of the cosmos and how humans have ventured into it. Space exploration, however, goes hand in hand with astronomy. So, I’ve come up with a list of 15 simple facts about spaceflight that you can share with your children — or with your non-astronomer friends.',
    'date': '2.11.2022'
  },
  {
    'title': 'Astronomers Discover Closest Known Black Hole to Earth',
    'content':
        'Astronomers have discovered a black hole closer to Earth than any other previously found. It’s about ten times as massive as our sun and is located just 1,600 light-years away—rather nearby on a cosmic scale.',
    'date': '3.11.2022'
  },
  {
    'title': "THIS WEEK'S SKY AT A GLANCE, NOVEMBER 11 – 19",
    'content':
        "The waning gibbous Moon rises less than an hour after nightfall is complete, with Mars shining to its upper right as shown below. A week ago it was Jupiter's turn with the Moon, and three days before that it was Saturn's. The Moon doesn't play favorites; it makes a point of visiting each planet every month, not to mention its own phase-maker, the Sun.",
    'date': '4.11.2022'
  }
];

List<Map> data3 = [
  {
    // 'id': '4',
    'objectName': 'MARS',
    'objectPict': 'assets/Mars.png',
    'objectSub': 'The Red Planet',
    'description':
        'The fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere.',
    'objectDetail': '2',
    'objectDetail1': 'MOONS',
    'objectDetail2': 'Terrestrial',
    'objectDetail3': '2.106 Mi',
    'lengthOfDay': '24.6 Hours',
    'lengthOfYear': '687 Earth Days',
    'surfaceTemp': 'High 70 °F (20 °C), Low -225 °F (-153 °C)',
    'distanceFromSun':
        '142 Million Miles (228 Million Kilometers) away from The Sun',
    'mass': '5.9736 x 10(24) kg',
    'moons': '2 (Two)',
    'mainColor': Color.fromRGBO(255, 62, 0, 1)
  },
  {
    // 'id': '4',
    'objectName': 'TEMPEL 1',
    'objectPict': 'assets/Tempel1.png',
    'objectSub': 'Wilhelm Tempel',
    'description':
        'Comet 9P/Tempel 1 orbits The Sun within the Asteroid Belt, which lies between the orbits of Mars and Jupiter.',
    'objectDetail': '1867',
    'objectDetail1': 'FOUND',
    'objectDetail2': 'COMET',
    'objectDetail3': '3.73 Mi',
    'lengthOfDay': '24.6 Hours',
    'lengthOfYear': '687 Earth Days',
    'surfaceTemp': ' - ',
    'distanceFromSun':
        '3.73 Million Miles (228 Million Kilometers) away from The Sun',
    'mass': ' - ',
    'moons': 'none',
    'mainColor': Color.fromRGBO(135, 135, 135, 1)
  },
  {
    // 'id': '4',
    'objectName': 'MOON',
    'objectPict': 'assets/Moon.png',
    'objectSub': 'Luna',
    'description':
        "Earth's only natural satellite is simply called The Moonbe cause people didn't know other moons existed until Galileo Galilei discovered four moons orbiting Jupiter in 1610.",
    'objectDetail': '24',
    'objectDetail1': 'VISITORS',
    'objectDetail2': 'Moon',
    'objectDetail3': '1.079 Mi',
    'lengthOfDay': '24.6 Hours',
    'lengthOfYear': '687 Earth Days',
    'surfaceTemp': ' - ',
    'distanceFromSun':
        '1.079 Million Miles (228 Million Kilometers) away from The Sun',
    'mass': ' - ',
    'moons': 'none',
    'mainColor': Color.fromRGBO(166, 162, 159, 1)
  },
  {
    // 'id': '4',
    'objectName': 'SATURN',
    'objectPict': 'assets/Saturn2.png',
    'objectSub': 'The Ringed Planet',
    'description':
        "Saturn is unique among the planets. It is not the only planet to have rings – made of chunks of ice and rock – but none are as spectacular or as complicated as Saturn's.",
    'objectDetail': '83',
    'objectDetail1': 'MOONS',
    'objectDetail2': 'Gas Giant',
    'objectDetail3': '36.183 Mi',
    'lengthOfDay': '10.7 Hours',
    'lengthOfYear': '10.759 Earth Days',
    'surfaceTemp': '-300 °F (-185 °C)',
    'distanceFromSun':
        '886 Million Miles (1.4 Billion Kilometers) away from The Sun',
    'mass': '5.68 x 1026 kg',
    'moons': '83 (Eighty Three)',
    'mainColor': Color.fromRGBO(150, 125, 96, 1)
  },
  {
    // 'id': '4',
    'objectName': 'MERCURY',
    'objectPict': 'assets/Mercury.png',
    'objectSub': 'The Swift Planet',
    'description':
        'Fifth in line from the Sun, Jupiter is by far, the largest planet in the solar system – more than twice as massive as all the other planets combined.',
    'objectDetail': '0',
    'objectDetail1': 'MOONS',
    'objectDetail2': 'Terrestrial',
    'objectDetail3': '1.516 Mi',
    'lengthOfDay': '1.408 Earth Hours',
    'lengthOfYear': '176 Days (One day full Day-Night cycle)',
    'surfaceTemp': '(Day) 800 °F (430 °C), (Night) -290 °F (-180 °C)',
    'distanceFromSun':
        '36 Million Miles (58 Million Kilometers) away from The Sun',
    'mass': '3.3011×1023 kg',
    'moons': '0 (None)',
    'mainColor': Color.fromRGBO(92, 128, 255, 1)
  },
];

List<Map> data4 = [
  {
    // 'id': '1',
    'objectName': 'Pluto',
    'objectPict': 'assets/Pluto.png',
    'objectDetail': 'Dwarf Planet',
    'rotationsub': 'Length of Year: ',
    'rotation': '-',
    'lengthOfDay': '153 Hours',
    'lengthOfYear': '90.530 Earth Years',
    'surfaceTemp': '-387°F (-232°C)',
    'radius': '715 Miles (1,151 Kilometers)',
    'distanceFromSun': '3.6 Billion Miles away from The Sun',
    'mass': '1.30900 × 1022 kg',
    'moons': '5 (Five)',
    'mainColor': Color.fromRGBO(255, 190, 187, 1)
  },
  {
    // 'id': '2',
    'objectName': 'Cares',
    'objectPict': 'assets/Cares.png',
    'objectDetail': 'Dwarf Planet',
    'rotationsub': 'Length of Year: ',
    'rotation': '225 Days',
    'lengthOfDay': '9 Hours',
    'lengthOfYear': '1682 Earth Days',
    'surfaceTemp': 'Day: 100 °F (-73 °C)',
    'radius': '296 Miles (476 Kilometers) ',
    'distanceFromSun': '257 Million Miles away from The Sun',
    'mass': '9.1 × 10(20) kg',
    'moons': '0 (None)',
    'mainColor': Color.fromRGBO(110, 106, 94, 1)
  },
  {
    // 'id': '3',
    'objectName': 'Makemake',
    'objectPict': 'assets/Makemake.png',
    'objectDetail': 'Dwarf Planet',
    'rotationsub': 'Length of Year: ',
    'rotation': '365 Days',
    'lengthOfDay': '22.48 Hours',
    'lengthOfYear': '111.401 Earth Days',
    'surfaceTemp': '~ 406 °F (240 °C)',
    'radius': '~ 444 Miles (715 Kilometers) ',
    'distanceFromSun': '4,2 Million Miles away from The Sun',
    'mass': '3.1x10(21) kg',
    'moons': 'Provisional 1 (One)',
    'mainColor': Color.fromRGBO(193, 91, 59, 1)
  },
  {
    // 'id': '4',
    'objectName': 'Haumea',
    'objectPict': 'assets/Haumea.png',
    'objectDetail': 'Dwarf Planet',
    'rotationsub': 'Moons: ',
    'rotation': '2 Moons',
    'lengthOfDay': '4 Hours',
    'lengthOfYear': '104.096 Earth Days',
    'surfaceTemp': '465 °F (241 °C)',
    'radius': '~ 385 Miles (620 Kilometers) ',
    'distanceFromSun': '4 Million Miles away from The Sun',
    'mass': '(4.006±0.040)×10(21) kg',
    'moons': '2 (Two)',
    'mainColor': Color.fromRGBO(121, 111, 103, 1)
  },
  {
    // 'id': '5',
    'objectName': 'Eris',
    'objectPict': 'assets/Eris.png',
    'objectDetail': 'Gas Giant',
    'rotationsub': 'Moons: ',
    'rotation': '79 Moons',
    'lengthOfDay': '25 Hours',
    'lengthOfYear': '203.444 Earth Days',
    'surfaceTemp': '~ 405 °F (~ 243 °C)',
    'radius': '722 Miles (1.163 Kilometers) ',
    'distanceFromSun': '6 Million Miles away from The Sun',
    'mass': '(1.6466±0.0085)×10(22) kg',
    'moons': '1 (One)',
    'mainColor': Color.fromRGBO(203, 198, 197, 1)
  },
];
