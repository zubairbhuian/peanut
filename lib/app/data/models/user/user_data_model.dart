class UserDataModel {
  String address;
  double balance;
  String city;
  String country;
  int currency;
  int currentTradesCount;
  double currentTradesVolume;
  double equity;
  double freeMargin;
  bool isAnyOpenTrades;
  bool isSwapFree;
  int leverage;
  String name;
  String phone;
  int totalTradesCount;
  double totalTradesVolume;
  int type;
  int verificationLevel;
  String zipCode;

  UserDataModel({
    required this.address,
    required this.balance,
    required this.city,
    required this.country,
    required this.currency,
    required this.currentTradesCount,
    required this.currentTradesVolume,
    required this.equity,
    required this.freeMargin,
    required this.isAnyOpenTrades,
    required this.isSwapFree,
    required this.leverage,
    required this.name,
    required this.phone,
    required this.totalTradesCount,
    required this.totalTradesVolume,
    required this.type,
    required this.verificationLevel,
    required this.zipCode,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      address: json['address'],
      balance: json['balance'].toDouble(),
      city: json['city'],
      country: json['country'],
      currency: json['currency'],
      currentTradesCount: json['currentTradesCount'],
      currentTradesVolume: json['currentTradesVolume'].toDouble(),
      equity: json['equity'].toDouble(),
      freeMargin: json['freeMargin'].toDouble(),
      isAnyOpenTrades: json['isAnyOpenTrades'],
      isSwapFree: json['isSwapFree'],
      leverage: json['leverage'],
      name: json['name'],
      phone: json['phone'],
      totalTradesCount: json['totalTradesCount'],
      totalTradesVolume: json['totalTradesVolume'].toDouble(),
      type: json['type'],
      verificationLevel: json['verificationLevel'],
      zipCode: json['zipCode'],
    );
  }
}