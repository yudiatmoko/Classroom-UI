class Semester{
  String className;
  String description;
  String creator;
  AssetImage bannerImg;

  Semester({
      required this.className,
      required this.description,
      required this.creator,
      required this.bannerImg,
  });
}

List<Semester> semester1List = [
  Semester(
    className: "Pengenalan Algoritma dan Pemrograman",
    description: "1A Sistem Informasi",
    creator: "Apriade Voutama",
    bannerImg: AssetImage("assets/Images/banner12.jpg"),
  ),
  Semester(
    className: "Aljabar Linear",
    description: "1A Sistem Informasi",
    creator: "Iqbal Maulana",
    bannerImg: AssetImage("assets/Images/banner2.jpg"),
  ),
  Semester(
    className: "Pengantar Teknologi Informasi",
    description: "1A Sistem Informasi",
    creator: "Siska",
    bannerImg: AssetImage("assets/Images/banner10.jpg"),
  ),
  Semester(
      className: "Kepemimpinan & Keterampilan Interpersonal",
      description: "1A Sistem Informasi",
      creator: "H. Bagja Nugraha",
      bannerImg: AssetImage("assets/Images/banner4.jpg"),

  ),
  Semester(
    className: "Pendidikan Agama",
    description: "1A Sistem Informasi",
    creator: "Dewi Siti Aisyah",
    bannerImg: AssetImage("assets/Images/banner7.jpg"),
  ),
  Semester(
    className: "Pancasila",
    description: "1A Sistem Informasi",
    creator: "H. Rd. Moh. Darajatun",
    bannerImg: AssetImage("assets/Images/banner5.jpg"),

      ),
  Semester(
    className: "Bahasa Inggris Umum",
    description: "1A Sistem Informasi",
    creator: "Acep Bahrum Kamil",
    bannerImg: AssetImage("assets/Images/banner6.jpg"),
  ),
];

List<Semester> semester2List = [
  Semester(
    className: "Pengenalan Basis Data",
    description: "2A Sistem Informasi",
    creator: "H. Bagja Nugraha",
    bannerImg: AssetImage("assets/Images/banner11.jpg"),
  ),
  Semester(
    className: "Algoritma Struktur Data",
    description: "2A Sistem Informasi",
    creator: "Apriade Voutama",
    bannerImg: AssetImage("assets/Images/banner10.jpg"),
  ),
  Semester(
    className: "English for Business Presentation",
    description: "2A Sistem Informasi",
    creator: "Adithya Rinaldi Irawan",
    bannerImg: AssetImage("assets/Images/banner9.jpg"),
  ),
  Semester(
      className: "Konsep Sistem Informasi",
      description: "2A Sistem Informasi",
      creator: "Nina Sulistiyowati",
      bannerImg: AssetImage("assets/Images/banner8.jpg"),

  ),
  Semester(
    className: "eBusiness",
    description: "2A Sistem Informasi",
    creator: "Siska",
    bannerImg: AssetImage("assets/Images/banner7.jpg"),
  ),
  Semester(
    className: "Kewarganegaraan",
    description: "2A Sistem Informasi",
    creator: "Abdul Muis",
    bannerImg: AssetImage("assets/Images/banner6.jpg"),

      ),
  Semester(
    className: "Bahasa Indonesia",
    description: "2A Sistem Informasi",
    creator: "Hamdan Fuadi Rofie",
    bannerImg: AssetImage("assets/Images/banner5.jpg"),
  ),
];
