class Category {
  final String name;
  final String image;
  Category(
    this.name,
    this.image,
  );
}

List<Category> categories = categoriesData
    .map((item) => Category(
          item['name'].toString(),
          item['image'].toString(),
        ))
    .toList();

var categoriesData = [
  {
    'name': 'Pembantu',
    'image': 'assets/images/pembantu.png',
  },
  {
    'name': 'Babysitter',
    'image': 'assets/images/babysitter.png',
  },
  {
    'name': 'Perawat Lansia',
    'image': 'assets/images/perawatLansia.png',
  },
  {
    'name': 'Pembersih',
    'image': 'assets/images/pembersih.png',
  },
  {
    'name': 'Sopir',
    'image': 'assets/images/sopir.png',
  },
];

// PEMBANTU
class PembantuClient {
  final String name;
  final String age;
  final String email;
  final String gender;
  final String category;
  final String location;
  final String type;
  final String requestSalary;
  final String experience;
  final String rating;
  final String photo;

  PembantuClient(
    this.name,
    this.age,
    this.email,
    this.gender,
    this.category,
    this.location,
    this.type,
    this.requestSalary,
    this.experience,
    this.rating,
    this.photo,
  );
}

List<PembantuClient> pembantuClients = pembantuClientsData
    .map((item) => PembantuClient(
        item['name'].toString(),
        item['age'].toString(),
        item['email'].toString(),
        item['gender'].toString(),
        item['category'].toString(),
        item['location'].toString(),
        item['type'].toString(),
        item['requestSalary'].toString(),
        item['experience'].toString(),
        item['rating'].toString(),
        item['photo'].toString()))
    .toList();

var pembantuClientsData = [
  {
    'name': 'Puspita Ayu',
    'age': '34',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Perempuan',
    'category': 'Pembantu',
    'location': 'Tangerang',
    'type': 'Full-Time',
    'requestSalary': 'Rp. 4,000,000 / bulan',
    'experience': '7 tahun',
    'rating': '4.8',
    'photo': 'assets/images/profilPerempuan.png',
  },
  {
    'name': 'Iriana Aryani',
    'age': '32',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Perempuan',
    'category': 'Pembantu',
    'location': 'Bandung',
    'type': 'Full-Time',
    'requestSalary': 'Rp. 3,750,000 / bulan',
    'experience': '3 tahun',
    'rating': '4.7',
    'photo': 'assets/images/profilPerempuan.png',
  },
  {
    'name': 'Kiki Suherwati',
    'age': '30',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Perempuan',
    'category': 'Pembantu',
    'location': 'Jakarta',
    'type': 'Part-Time',
    'requestSalary': 'Rp. 2,200,000 / bulan',
    'experience': '6 tahun',
    'rating': '4.75',
    'photo': 'assets/images/profilPerempuan.png',
  },
  {
    'name': 'Amanah Astuti',
    'age': '39',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Perempuan',
    'category': 'Pembantu',
    'location': 'Jakarta',
    'type': 'Full-Time',
    'requestSalary': 'Rp. 4,300,000 / bulan',
    'experience': '10 tahun',
    'rating': '4.8',
    'photo': 'assets/images/profilPerempuan.png',
  }
];

// Babysitter
class BabysitterClient {
  final String name;
  final String age;
  final String email;
  final String gender;
  final String category;
  final String location;
  final String type;
  final String requestSalary;
  final String experience;
  final String rating;
  final String photo;

  BabysitterClient(
    this.name,
    this.age,
    this.email,
    this.gender,
    this.category,
    this.location,
    this.type,
    this.requestSalary,
    this.experience,
    this.rating,
    this.photo,
  );
}

List<BabysitterClient> babysitterClients = babysitterClientsData
    .map((item) => BabysitterClient(
        item['name'].toString(),
        item['age'].toString(),
        item['email'].toString(),
        item['gender'].toString(),
        item['category'].toString(),
        item['location'].toString(),
        item['type'].toString(),
        item['requestSalary'].toString(),
        item['experience'].toString(),
        item['rating'].toString(),
        item['photo'].toString()))
    .toList();

var babysitterClientsData = [
  {
    'name': 'Sri Asih',
    'age': '27',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Perempuan',
    'category': 'Babysitter',
    'location': 'Jakarta',
    'type': 'Part-Time',
    'requestSalary': 'Rp. 2,150,000 / bulan',
    'experience': '2 tahun',
    'rating': '4.75',
    'photo': 'assets/images/profilPerempuan.png',
  },
  {
    'name': 'Lani Hartati',
    'age': '38',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Perempuan',
    'category': 'Babysitter',
    'location': 'Medan',
    'type': 'Full-Time',
    'requestSalary': 'Rp. 4,000,000 / bulan',
    'experience': '8 tahun',
    'rating': '4.7',
    'photo': 'assets/images/profilPerempuan.png',
  },
  {
    'name': 'Ulya Palastri',
    'age': '32',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Perempuan',
    'category': 'Babysitter',
    'location': 'Pontianak',
    'type': 'Full-Time',
    'requestSalary': 'Rp. 3,700,000 / bulan',
    'experience': '5 tahun',
    'rating': '4.75',
    'photo': 'assets/images/profilPerempuan.png',
  }
];

// Perawat Lansia
class PerawatLansiaClient {
  final String name;
  final String age;
  final String email;
  final String gender;
  final String category;
  final String location;
  final String type;
  final String requestSalary;
  final String experience;
  final String rating;
  final String photo;

  PerawatLansiaClient(
    this.name,
    this.age,
    this.email,
    this.gender,
    this.category,
    this.location,
    this.type,
    this.requestSalary,
    this.experience,
    this.rating,
    this.photo,
  );
}

List<PerawatLansiaClient> perawatLansiaClients = perawatLansiaClientsData
    .map((item) => PerawatLansiaClient(
        item['name'].toString(),
        item['age'].toString(),
        item['email'].toString(),
        item['gender'].toString(),
        item['category'].toString(),
        item['location'].toString(),
        item['type'].toString(),
        item['requestSalary'].toString(),
        item['experience'].toString(),
        item['rating'].toString(),
        item['photo'].toString()))
    .toList();

var perawatLansiaClientsData = [
  {
    'name': 'Eddy Kuswono',
    'age': '27',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Laki-Laki',
    'category': 'Perawat Lansia',
    'location': 'Jakarta',
    'type': 'Full-Time',
    'requestSalary': 'Rp. 4,000,000 / bulan',
    'experience': '3 tahun',
    'rating': '4.8',
    'photo': 'assets/images/profilLaki-Laki.png',
  },
  {
    'name': 'Rani Riyanti',
    'age': '26',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Perempuan',
    'category': 'PerawatLansia',
    'location': 'Surabaya',
    'type': 'Full-Time',
    'requestSalary': 'Rp. 3,450,000 / bulan',
    'experience': '1 tahun',
    'rating': '4.75',
    'photo': 'assets/images/profilPerempuan.png',
  }
];

// Pembersih
class PembersihClient {
  final String name;
  final String age;
  final String email;
  final String gender;
  final String category;
  final String location;
  final String type;
  final String requestSalary;
  final String experience;
  final String rating;
  final String photo;

  PembersihClient(
    this.name,
    this.age,
    this.email,
    this.gender,
    this.category,
    this.location,
    this.type,
    this.requestSalary,
    this.experience,
    this.rating,
    this.photo,
  );
}

List<PembersihClient> pembersihClients = pembersihClientsData
    .map((item) => PembersihClient(
        item['name'].toString(),
        item['age'].toString(),
        item['email'].toString(),
        item['gender'].toString(),
        item['category'].toString(),
        item['location'].toString(),
        item['type'].toString(),
        item['requestSalary'].toString(),
        item['experience'].toString(),
        item['rating'].toString(),
        item['photo'].toString()))
    .toList();

var pembersihClientsData = [
  {
    'name': 'Edo Kurniawan',
    'age': '26',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Laki-Laki',
    'category': 'Pembersih',
    'location': 'Bandung',
    'type': 'Part-Time',
    'requestSalary': 'Rp. 1,850,000 / bulan',
    'experience': '2 tahun',
    'rating': '4.8',
    'photo': 'assets/images/profilLaki-Laki.png',
  },
  {
    'name': 'Rano Sirait',
    'age': '29',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Laki-Laki',
    'category': 'Pembersih',
    'location': 'Jakarta',
    'type': '-',
    'requestSalary': 'Rp. 250,000 / hari',
    'experience': '3 tahun',
    'rating': '4.7',
    'photo': 'assets/images/profilLaki-Laki.png',
  },
  {
    'name': 'Ekky Gunawan',
    'age': '23',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Laki-Laki',
    'category': 'Pembersih',
    'location': 'Tangerang',
    'type': '-',
    'requestSalary': 'Rp. 150,000 / hari',
    'experience': '6 bulan',
    'rating': '4.75',
    'photo': 'assets/images/profilLaki-Laki.png',
  },
  {
    'name': 'Lusi Hasanah',
    'age': '27',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Perempuan',
    'category': 'Pembersih',
    'location': 'Bali',
    'type': '-',
    'requestSalary': 'Rp. 150,000 / hari',
    'experience': '2 tahun',
    'rating': '4.75',
    'photo': 'assets/images/profilPerempuan.png',
  }
];

// SOPIR
class SopirClient {
  final String name;
  final String age;
  final String email;
  final String gender;
  final String category;
  final String location;
  final String type;
  final String requestSalary;
  final String experience;
  final String rating;
  final String photo;

  SopirClient(
    this.name,
    this.age,
    this.email,
    this.gender,
    this.category,
    this.location,
    this.type,
    this.requestSalary,
    this.experience,
    this.rating,
    this.photo,
  );
}

List<SopirClient> sopirClients = sopirClientsData
    .map((item) => SopirClient(
        item['name'].toString(),
        item['age'].toString(),
        item['email'].toString(),
        item['gender'].toString(),
        item['category'].toString(),
        item['location'].toString(),
        item['type'].toString(),
        item['requestSalary'].toString(),
        item['experience'].toString(),
        item['rating'].toString(),
        item['photo'].toString()))
    .toList();

var sopirClientsData = [
  {
    'name': 'Leo Marpaung',
    'age': '31',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Laki-Laki',
    'category': 'Sopir',
    'location': 'Lampung',
    'type': 'Part-Time',
    'requestSalary': 'Rp. 1,700,000 / bulan',
    'experience': '1.5 tahun',
    'rating': '4.9',
    'photo': 'assets/images/profilLaki-Laki.png',
  },
  {
    'name': 'Adiyanto Lasmono',
    'age': '34',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Laki-Laki',
    'category': 'Sopir',
    'location': 'Jakarta',
    'type': 'Full-Time',
    'requestSalary': 'Rp. 3,500,000 / bulan',
    'experience': '3 tahun',
    'rating': '4.9',
    'photo': 'assets/images/profilLaki-Laki.png',
  },
  {
    'name': 'Agus Halim',
    'age': '39',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Laki-Laki',
    'category': 'Sopir',
    'location': 'Tangerang',
    'type': 'Full-Time',
    'requestSalary': 'Rp. 3,250,000 / bulan',
    'experience': '2 tahun',
    'rating': '4.8',
    'photo': 'assets/images/profilLaki-Laki.png',
  },
  {
    'name': 'Supriadi Wibowo',
    'age': '37',
    'email': 'dummy.email.0004@gmail.com',
    'gender': 'Laki-Laki',
    'category': 'Sopir',
    'location': 'Semarang',
    'type': 'Part-Time',
    'requestSalary': 'Rp. 1,250,000 / bulan',
    'experience': '10 bulan',
    'rating': '4.75',
    'photo': 'assets/images/profilLaki-Laki.png',
  }
];
