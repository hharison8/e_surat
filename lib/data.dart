import 'package:flutter/material.dart';

class mydata extends DataTableSource{
  final List <Map<String,dynamic>> _data = List.generate(
    200, 
    (index) => {
      'no': 'Test/ $index',
      'perihal': 'Test app $index',
    });

  @override
  DataRow? getRow(int index){
    return DataRow(cells: [
    DataCell(Text(_data[index]['no'])),
    DataCell(Text(_data[index]['perihal'])),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;

}

