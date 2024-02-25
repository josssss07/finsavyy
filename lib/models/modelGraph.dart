class SalesData {
  late String? year;
  late double? sales;

  SalesData(this.year, this.sales);

  SalesData.fromJson(String year, double sales) {
    this.year = year;
    this.sales = sales;
  }
}
