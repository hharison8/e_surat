import 'package:flutter/material.dart';

class mydata extends DataTableSource{
  final List <Map<String,dynamic>> _dataAgenda = List.generate(
    200, 
    (index) => {
      'dari': 'dinas sosial',
      'perihal': 'Test app  $index',
    });

  @override
  DataRow? getRow(int index){
    return DataRow(cells: [
    DataCell(Text(_dataAgenda[index]['dari'])),
    DataCell(Text(_dataAgenda[index]['perihal'])),
    DataCell(PopupMenuButton<int>(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      itemBuilder: (BuildContext ctx) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                    Navigator.pushNamed(ctx, '/pdfView_agenda');
                  },
                child: 
                  const Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye_sharp  ,
                        color: Colors.blue,
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("View")
                    ],
                  ),
              ),
            ],
          ),
        ),
      ],
      offset: const Offset(0,35),
      elevation: 1,
    )
    )
    ]);
  }


  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _dataAgenda.length;

  @override
  int get selectedRowCount => 0;

}

