import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:guardllama_api/guardllama_api.dart';
import 'package:intl/intl.dart';

class _QueryLogsDataSource extends DataTableSource {
  final BuildContext context;

  final List<AdGuardStatusQueryLog> logs;

  _QueryLogsDataSource({required this.context, required this.logs});

  @override
  DataRow? getRow(int index) {
    assert(index >= 0);

    final log = logs[index];
    return DataRow2.byIndex(index: index, cells: [
      _buildDataCell(
        DateFormat.Hms().format(log.timestamp.toLocal()),
        DateFormat('y-MM-d').format(log.timestamp.toLocal()),
      ),
      _buildDataCell(log.request.name,
          'Type: ${log.request.type}, Class: ${log.request.class_}'),
      _buildDataCell(
        log.reason.toString(),
        '${log.response.elapsedMs!.round().toString()} ms',
      ),
      _buildDataCell(
        log.client.address,
        log.client.name.length > 33
            ? '${log.client.name.substring(0, 33)}...'
            : log.client.name,
      ),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => logs.length;

  @override
  int get selectedRowCount => 0;

  DataCell _buildDataCell(String title, String subtitle) => DataCell(
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Text(title),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodySmall!.fontSize),
          ),
        ),
      );
}

class QueryLogsTable extends StatelessWidget {
  final List<AdGuardStatusQueryLog> logs;

  const QueryLogsTable({super.key, required this.logs});

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable2(
      headingRowColor: MaterialStateColor.resolveWith((states) => Colors.white),
      source: _QueryLogsDataSource(context: context, logs: logs),
      columnSpacing: 12,
      horizontalMargin: 12,
      dividerThickness: 1,
      dataRowHeight: 80,
      renderEmptyRowsInTheEnd: false,
      rowsPerPage: 20,
      autoRowsToHeight: true,
      fit: FlexFit.tight,
      initialFirstRowIndex: 0,
      columns: const [
        DataColumn2(
          label: Text('Time', style: TextStyle(fontWeight: FontWeight.bold)),
          size: ColumnSize.M,
        ),
        DataColumn2(
          label: Text('Request', style: TextStyle(fontWeight: FontWeight.bold)),
          size: ColumnSize.L,
        ),
        DataColumn2(
          label:
              Text('Response', style: TextStyle(fontWeight: FontWeight.bold)),
          size: ColumnSize.M,
        ),
        DataColumn2(
          label: Text('Client', style: TextStyle(fontWeight: FontWeight.bold)),
          size: ColumnSize.M,
        ),
      ],
      empty: Center(
          child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey[200],
              child: const Text('No data'))),
    );
  }
}
