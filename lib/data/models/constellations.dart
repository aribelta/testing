class Constellations {
  String nameLatin;
  String nameEnglish;
  String images;
  int size;
  String visibilty;
  String brightestStar;
  String category;
  String desc;

  Constellations(
      {required this.nameLatin,
      required this.nameEnglish,
      required this.images,
      required this.size,
      required this.visibilty,
      required this.brightestStar,
      required this.category,
      required this.desc});
}

final List<Constellations> constellationsList = [
  Constellations(
      nameLatin: 'Andromeda',
      nameEnglish: 'The Princess',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Andromeda.png',
      size: 722,
      visibilty: 'All year',
      brightestStar: 'Alpheratz',
      category: 'Northern Hemisphere',
      desc:
          'Andromeda is one of the oldest and most widely recognized constellations that shows up in the northern hemisphere and is a part of the family of Perseus, Cepheus, and Cassiopeia. This one is associated with ancient Babylonian astronomy but found by Ptolemy in the 2nd century CE (was part of then known 48 constellations). Her special feature is the Andromeda Nebula nearest spiral galaxy.\n\nAndromeda is a part of the Perseus family of constellations, along with Auriga, Cassiopeia, Cepheus, Cetus, Lacerta, Pegasus, Perseus and Triangulum. It contains 3 Messier objects: Messier 31 (Andromeda Galaxy, now called Nebula), Messier 32 and Messier 110.'),
  Constellations(
      nameLatin: 'Aries',
      nameEnglish: 'The Ram',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Aries.png',
      size: 441,
      visibilty: 'Autumn',
      brightestStar: 'Hamal',
      category: 'Northern Hemisphere',
      desc:
          'Aries Constellation is one of the Zodiac signs and therefore part of Zodiac constellation. It is located in the northern hemisphere and is relatively small, but has a specific structure that can make you easily recognizable and seen from below. The first mention of Aries goes back to the Babylonian era, but it was believed that is was actually Ptolemy who named it. Aries was an agrarian worker at first, but the Babylonians changed that later on to ram. Around 7th century Aries constellation was placed close to vernal equinox that indicates the start of the spring season. Due to the movement of constellations, the spring equinox takes place under Pisces instead of Aries.\nThe Aries constellation was first recognized as an independent constellation around 1350 BC.'),
  Constellations(
      nameLatin: 'Cygnus',
      nameEnglish: 'The Swan',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Cygnus.png',
      size: 804,
      visibilty: 'Summer, Autumn',
      brightestStar: 'Deneb',
      category: 'Northern Hemisphere',
      desc:
          'Cygnus constellation was identified by the Ptolemy in the 2nd century CE and is bordered by the constellations of Cepheus, Draco, Lyra, Vulpecula, Lacerta, and Pegasus. This is a prominent constellation in the northern sky also known as the Swan constellation. Cygnus is the Latin word for Swan and has roots in Greek mythology, due to its connection to Zeus and Leda. This is the 16th largest constellation in the night sky, and it lies in the fourth quadrant of the northern hemisphere. Cygnus has importance both to ancient Greek mythology and astrology, and that is way Ptolemy added it to his original list of 48 constellations. In Hinduism, Cygnus is connected with the ‘Brahma Muhurta’ which translates to ‘Moment of the Universe’ – this is a time period that lasts from 4:24 am to 5:12 am and is considered to be the best time to start the day.'),
  Constellations(
      nameLatin: 'Gemini',
      nameEnglish: 'The twins',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Gemini.png',
      size: 514,
      visibilty: 'Winter, Spring',
      brightestStar: 'Pollux',
      category: 'Northern Hemisphere',
      desc:
          'Gemini constellation is easy to find the constellation in the northern hemisphere. Its name is Latin and could be translated to ‘The Twins’. Gemini, therefore, contains two bright stars, associated with the Greek myth of brothers Castor and Pollux. The constellation was introduced in 2nd century CE, by famous Greek astronomer Ptolemy, and it is a member of the Zodiac constellations family. The constellation’s symbol is ♊, and the Twins are in ancient Greece known as the Dioscuri. Gemini is now officially recognized and listed as one of the 88 modern constellations by the International Astronomical Union.'),
  Constellations(
      nameLatin: 'Leo',
      nameEnglish: 'The lion of Nemea',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Leo.png',
      size: 947,
      visibilty: 'Spring',
      brightestStar: 'Regulus',
      category: 'Both Hemisphere',
      desc:
          'Leo constellation is a member of the Zodiac family of constellations and it lies in the northern sky. It is known as one of the largest constellations in the night sky. It was first introduced by famous Greek astronomer Ptolemy in 2nd century CE, along with other Zodiac constellations. Leo is now officially accepted and recognized by International Astronomical Union and listed as one of 88 modern constellations. Its symbol is ♌, and the story of this constellation is linked to the lion from Greek mythology, who was killed by Heracles in his 12 Labours.\n\nThe six bright stars on the night sky form a shape that represents the head of the Lion. The brightest star Regulus or Alpha Leonis is the heart of the lion. Denebola, the second brightest star of Leo constellation is the tail of a lion, and his forehead and rump are depicted by Zosma and Algieba stars – Gamma and Delta Leonis.'),
  Constellations(
      nameLatin: 'Orion',
      nameEnglish: 'The Hunter',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Orion.png',
      size: 594,
      visibilty: 'Winter',
      brightestStar: 'Rigel',
      category: 'Both Hemisphere',
      desc:
          'Orion constellation is the most popular and well known, easily spotted constellation in the night sky. Constellation has a belt of 3 stars that shine bright in both hemisphere, and thanks to its brightness could be easily spotted to all observers on both hemispheres. The constellation lies in the celestial equator and has been known since ancient times. It has roots in Greek mythology and is associated with a famous Greek hunter called Orion. In the star maps, the hunter is often depicted as either facing the Taurus and pursuing Pleiade’s sister, or chasing the hare represented by Lepus constellation with his 2 hunting dogs – Canis Major and Canis Minor constellations. Orion was introduced by Ptolemy in the 2nd century and is now part of 88 modern constellations list by IAU.'),
  Constellations(
      nameLatin: 'Pegasus',
      nameEnglish: 'The Winged Horse',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Pegasus.png',
      size: 1121,
      visibilty: 'Autumn',
      brightestStar: 'Enif',
      category: 'Northern Hemisphere',
      desc:
          'Pegasus is the seventh-largest modern constellation in the northern hemisphere. It was named by the winged ancient horse from Greek mythology.\n\nPegasus contains 8 bright stars and its known planets and they are shaped like a body and head of a horse. The brightest star in the constellation is Enif, also known as Epsilon Pegasi – an orange giant, 672 light-years away from the Earth.\n\nPegasus constellation is bordered by Cygnus, Lacerta, Delphinus, Vulpecula, Equuleus, Andromeda and Zodiac constellations Aquarius and Pisces. It was spotted by Ptolemy in the 2nd century CE, and later on, acknowledged in the modern constellations by IAU. Certain astronomers believe it was connected with Babylonian constellation IKU.'),
  Constellations(
      nameLatin: 'Perseus',
      nameEnglish: 'The Hero',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Perseus.png',
      size: 615,
      visibilty: 'Winter, Spring',
      brightestStar: 'Mirfak',
      category: 'Northern Hemisphere',
      desc:
          'Perseus is an ancient Greek hero who was known for defeating Medusa. The famous star Algol that is contained in this constellation is actually the head of Medusa, that Perseus has cut off. The star is very bright and reddish.\nPerseus is located in the Milky Way, and it lies between Giraffe, Aries, Cassiopeia, Triangle and Charioteer constellations.\n\nPerseus constellation is positioned in the northern sky. This is one of the larger constellations that lie next to Andromeda. Ptolemy was to one to spot it in 2nd century CE, and it is now acknowledged by IAU and listed as one of 88 modern constellations.'),
  Constellations(
      nameLatin: 'Pisces',
      nameEnglish: 'The Fishes',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Pisces.png',
      size: 889,
      visibilty: 'Autumn',
      brightestStar: 'η-Psc',
      category: 'Both Hemisphere',
      desc:
          'Pisces constellation is one of the largest northern sky constellations, located on the ecliptic. Its name is Latin for ‘the fish’ and it was first introduced by Greek astronomer Ptolemy in the 2nd century CE. The constellation could be easily spotted from both hemispheres during culmination in September and October. Pisces is located between Triangle, Pegasus, Aquarius and Aries constellations and is a member of the Zodiac family of constellations.\n\nWhen it comes to mythology, Pisces appears in the story of Aphrodite the goddess and her son Eros. The symbol of this constellation is ♓, and the constellation is now officially recognized and listed as one of the 88 modern times known constellations – a list created by the International Astronomical Union.'),
  Constellations(
      nameLatin: 'Ursa Major',
      nameEnglish: 'Great Bear',
      images:
          'https://starregistration.net/cdn-cgi/image/format=auto/media/wysiwyg/Constellations/Ursa_major.png',
      size: 1280,
      visibilty: 'All year',
      brightestStar: 'Alioth',
      category: 'Both Hemisphere',
      desc:
          'Ursa Major is one of the oldest and most recognized constellations. It was spotted by Ptolemy at first and part of his 48 known constellations list. This constellation was mentioned in the Bible and depicted by Vincent Van Gogh. Her name is Latin for the Great bear, due to its connection with the bear animal from Greek mythology. The Great bear is formed by asterisms of many recognized stars.\n\nHer primary asterism is formed by 7 to 20 stars and the constellation also contains 93 Bayer Flamsteed designated stars. Neighborhood constellations are Draco, Camelopardalis, Lynx, Leo Minor, Leo constellation, Canes Venatici, Bootes and Coma Berencies.\n\nUrsa Major constellation lies in the northern sky and signifies the Large, Great Bear. The smaller one is Ursa Minor. Big Bear is actually the largest northern constellation and the third largest one in the night sky. The brightest stars of this constellation form an asterism that is known as the Big Dipper. Ancient cultures used Ursa Major for navigation as it points to the North Star. \n\nIn Greek mythology, Ursa Major is mostly associated with nymph Callisto, who was turned into a bear by jealous Hera. '),
];
