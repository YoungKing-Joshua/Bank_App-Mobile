class CustomerTransactionData {
  String? customerID;
  String? transactionDate;
  double? transactionAmount;
  String? transactionDirection;
  String? transactionNarration;

  CustomerTransactionData({
    this.customerID,
    this.transactionDate,
    this.transactionAmount,
    this.transactionDirection,
    this.transactionNarration,
  });

  factory CustomerTransactionData.fromJson(Map<String, dynamic> json) {
    return CustomerTransactionData(
      customerID: json['customerID'],
      transactionAmount: json['transactionAmount']?.toDouble(),
      transactionDate: json['transactionDate'],
      transactionDirection: json['transactionDirection'],
      transactionNarration: json['transactionNarration'],
    );
  }
}

class CustomerStaticData {
  
  String? customerID;
  String? customerName;
  String? gender;
  String? title;

  CustomerStaticData({
    this.customerID,
    this.customerName,
    this.gender,
    this.title,
  });

  factory CustomerStaticData.fromJson(Map<String, dynamic> json) {
    return CustomerStaticData(
      customerID: json['customerID'],
      customerName: json['customerName'],
      gender: json['gender'],
      title: json['title'],
    );
  }
}
