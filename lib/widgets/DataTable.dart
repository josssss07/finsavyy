import 'package:flutter/material.dart';

class Dtable extends StatelessWidget {
  final List<List<String>> data;

  const Dtable({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Center(
        child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Color of shadow
            spreadRadius: 0, // Spread radius
            blurRadius: 1, // Blur radius
            offset: const Offset(0, 3), // Offset of shadow
          ),
        ],
      ),
      width: screenWidth * 0.9,
      height: 400, // Fixed height to allow vertical scrolling
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTableTheme(
            data: DataTableThemeData(
              headingRowColor: MaterialStateColor.resolveWith(
                  (states) => const Color(0xFFE5EDEA)),
              dataRowColor: MaterialStateColor.resolveWith(
                  (states) => const Color(0xFFF9FBFA)),
              dataTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
              headingTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            child: DataTable(
              columns: const [
                DataColumn(label: Text('Properties')),
                DataColumn(label: Text('Values')),
              ],
              rows: List.generate(
                data.length,
                (index) => _createDataRow(data[index][0], data[index][1]),
              ),
            ),
          ),
        ),
      ),
    ));
  }

  DataRow _createDataRow(String property, String value) {
    return DataRow(
      cells: [
        DataCell(Text(property)),
        DataCell(Text(value)),
      ],
    );
  }
}
