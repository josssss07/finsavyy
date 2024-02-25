class SummaryName {
  late String? longName;
  late String? longBusinessSummary;

  SummaryName(this.longName, this.longBusinessSummary);

  SummaryName.fromJson(Map<String, dynamic> json) {
    longName = json['information']['longName'];
    longBusinessSummary = json['information']['longBusinessSummary'];
  }
}
