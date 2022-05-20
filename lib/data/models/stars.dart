class Stars {
  String name;
  String image;

  Stars({required this.name, required this.image});
}

final List<Stars> starsList = [
  Stars(
      name: 'Aldebaran',
      image: 'http://www.exoplanetkyoto.org/exohtml/Stars/K5.bmp'),
  Stars(
      name: 'Pollux',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Pollux-Sun_comparison.png/220px-Pollux-Sun_comparison.png'),
  Stars(
      name: 'Arcturus',
      image:
          'https://www.pulsk.com/images/2013/09/29/5247b31e82068_5247b31e8300c.jpg'),
  Stars(
      name: 'Rigel',
      image:
          'https://i.pinimg.com/600x315/96/ca/43/96ca43d950823e563198642fd82313c5.jpg'),
  Stars(
      name: 'Antares',
      image: 'https://www.factsjustforkids.com/images/red-giant-star.png'),
];
