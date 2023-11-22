class TradeModel {
  double currentPrice;
  String comment;
  int digits;
  int login;
  double openPrice;
  DateTime openTime;
  double profit;
  double sl;
  double swaps;
  String symbol;
  double tp;
  int ticket;
  int type;
  double volume;

  TradeModel({
    required this.currentPrice,
    required this.comment,
    required this.digits,
    required this.login,
    required this.openPrice,
    required this.openTime,
    required this.profit,
    required this.sl,
    required this.swaps,
    required this.symbol,
    required this.tp,
    required this.ticket,
    required this.type,
    required this.volume,
  });

  factory TradeModel.fromJson(Map<String, dynamic> json) {
    return TradeModel(
      currentPrice: json['currentPrice'].toDouble(),
      comment: json['comment']?? '',
      digits: json['digits'],
      login: json['login'],
      openPrice: json['openPrice'].toDouble(),
      openTime: DateTime.parse(json['openTime']),
      profit: json['profit'].toDouble(),
      sl: json['sl'].toDouble(),
      swaps: json['swaps'].toDouble(),
      symbol: json['symbol'],
      tp: json['tp'].toDouble(),
      ticket: json['ticket'],
      type: json['type'],
      volume: json['volume'].toDouble(),
    );
  }
}