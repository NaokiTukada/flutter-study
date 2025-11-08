import 'package:flutter/material.dart';

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            '名前',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            '年齢',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            '役割',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('サラ')),
            DataCell(Text('19')),
            DataCell(Text('学生')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('ジャニン')),
            DataCell(Text('43')),
            DataCell(Text('教授')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('ウィリアム')),
            DataCell(Text('27')),
            DataCell(Text('准教授')),
          ],
        ),
      ],
    );
  }
}