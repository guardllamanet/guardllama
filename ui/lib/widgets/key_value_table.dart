import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class KeyValueRow {
  String key;
  String? keyHelp;
  bool? boldKeyText;
  Widget? value;

  KeyValueRow({required this.key, this.keyHelp, this.value, this.boldKeyText});
}

class KeyValueTable extends StatelessWidget {
  final List<KeyValueRow> rows;
  final double dataRowHeight;

  const KeyValueTable({super.key, required this.rows, this.dataRowHeight = 60});

  @override
  Widget build(BuildContext context) {
    buildDataRow(KeyValueRow r) => DataRow2(
          cells: [
            DataCell(
              Container(
                alignment: AlignmentDirectional.centerEnd,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  if (r.keyHelp != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Tooltip(
                        message: r.keyHelp,
                        child: const Icon(Icons.help_rounded),
                      ),
                    ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      r.key,
                      style: TextStyle(
                          fontWeight: r.boldKeyText == null || !r.boldKeyText!
                              ? FontWeight.normal
                              : FontWeight.bold),
                    ),
                  ),
                ]),
              ),
            ),
            DataCell(
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: r.value,
              ),
            ),
          ],
        );

    return DataTable2(
      headingRowHeight: 0,
      dividerThickness: 0,
      dataRowHeight: dataRowHeight,
      border: TableBorder.symmetric(
        outside: BorderSide(color: Theme.of(context).colorScheme.background),
      ),
      dataRowColor: MaterialStateColor.resolveWith((states) => Colors.white),
      columns: [
        DataColumn2(label: Container()),
        DataColumn2(label: Container()),
      ],
      rows: rows.map((r) => buildDataRow(r)).toList(),
    );
  }
}
