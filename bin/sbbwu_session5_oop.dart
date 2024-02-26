// user defined data type

class Book {
  String title = '';
  String author = '';
  int pages = 0;
  double price = 0.0;

  void display() {
    print('Title $title');
    print('Author $author');
    print('Pages $pages');
    print('Price $price');
  }
}

class Student {
  String name = '';
  String cnic = '';
  String email = '';
  String? contactNum; // optional

  // parameterized constructor

  Student({
    required this.name,
    required this.cnic,
    required this.email,
    String? contactNum,
  });

  // string interpolation
  void display() {
    print('Name $name');
    print('CNIC $cnic');
    print('Email $email');
    print('ContactNum $contactNum');
  }
}

void main() {
  //Student hina;

  // constructor is used to initialize object
  // hina = Student(
  //   name: 'Hina',
  //   cnic: '83983983983',
  //   email: 'hina@gmail.com',
  //   contactNum: '03444444444',
  // ); // default constructor
  //
  // hina.display();

  // Student gia = Student();
  // gia.name = 'Gia Khan';
  // gia.cnic = '87387373873873';
  // gia.email = 'gia@gmail.com';
  //
  // hina.display();
  // gia.display();

  // Book cpp;
  // cpp = Book(); // constructor
  //
  // cpp.title = 'C++';
  // cpp.author = 'Bjarne';
  // cpp.pages  = 500;
  // cpp.price = 800;
  // cpp.display();
  //
  // Book java;
  // java = Book(); // constructor
  // java.title = 'Java';
  // java.author = 'James';
  // java.pages = 600;
  // java.price = 900;
  // print('**************************');
  // java.display();

  Doctor ali = Doctor(
    name: 'Ali',
    gender: 'M',
    dob: '1st Nov',
    address: Address(streetNum: '9', city: 'Peshawar'),
    fee: 2000,
  );

  print(ali.name);
  print(ali.address.city);
}

class Address {
  String streetNum;
  String city;

  Address({required this.streetNum, required this.city});
}

class Person {
  String name;
  String gender;
  String dob;

  Person({
    required this.name,
    required this.gender,
    required this.dob,
  });
}


// is a relationship

class Doctor extends Person {
  int fee;
  Address address;// has a relationship

  Doctor({
    required String name,
    required String gender,
    required String dob,
    required this.fee,
    required this.address,
  }) : super(name: name, gender: gender, dob: dob);
}
