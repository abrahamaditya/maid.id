class Account {
  final String email;
  final String password;
  Account(
    this.email,
    this.password,
  );
}

List<Account> accounts = accountsData
    .map((item) => Account(
          item['email'].toString(),
          item['password'].toString(),
        ))
    .toList();

var accountsData = [
  {
    'email': 'user_001@gmail.com',
    'password': 'user123',
  },
];
