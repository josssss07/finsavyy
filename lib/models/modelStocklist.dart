class Stocks {
  late String? CompanyName;
  late String? StockValue;
  late String? CompanySymbol;

  Stocks(this.CompanyName, this.StockValue, this.CompanySymbol);

  Stocks.fromJson(Map<String, dynamic> json) {
    CompanyName = json['companyName'];
    StockValue = json['currentPrice'].toString();
    CompanySymbol = json['symbolName'];
  }
}
