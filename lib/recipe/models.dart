class Model {
  String label;
  String image;
  String info;
  String title;
  String about;

  Model(
    this.label,
    this.image,
    this.info,
    this.title,
    this.about,
  );

  static List<Model> nomi = [
    Model(
      "Daewoo Gentra",
      "images/gentra.jpg",
      "Daewoo "
          "Gentra 2 pozitsiya EVRO 2015 y.",
      "Toshkent\nSedan\nAvtomat\n"
          "Mokriy asfalt\nOldi\nHa\n1.5 l."
          "(Benzin)",
      "Optsiya va xarakteristikalar\n"
          "Yengil qotishmali disklar,tumanga qarshi chiroqlar,"
          "Tashqi chiroq proborlari, Audiosistema.",
    ),
    Model(
      "Audi A6",
      "images/audi.jpg",
      "1990 y.'sedan,3'I.' "
          "mexnika,benzin ",
      "Turkiya\nSedan\nAvtomat\n"
          "Oq\nO'rta\nKelishiladi\n2 l.",
      "Optsiya va xarakteristikalr\n"
          "Sifatli Turkiya maxsus disklar,tumanga qarshi chiroqlar,"
          "Tashqi chiroq proborlari,.",
    ),
    Model(
      "Volkswagen Polo",
      "images/volkswagen.jpg",
      "2000 y.',1'I.'1km,benzin",
      "AQSH\nPolo\nMexanik\n"
          "Ko'k\nYuqori\nYo'q\n1 l.",
      "Polo mustahkam qotishmali disklar,har qanday havoga chiroqlar,"
          "Tashqi har taraflama chiroq proborlari, Audiosistema.Butun elektr o'tkazgichli sistema mavjud.",
    ),
    Model(
      "Waz (Lada)",
      "images/waz.jpg",
      "1985 y. mexnika,benzin",
      "Germaniya\nLada\nMexanik\n"
          "Mokriy asfalt\nO'rta\nXa\n3 l.",
      "Lada mustahkam qotishmali disklar,"
          "tumanli havoga chiroqlar,"
          "Tashqi chiroq proborlari, Audiosistema."
          "Benzin asosida yuradi.",
    ),
  ];
}
