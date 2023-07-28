import 'package:flutter/material.dart';

class mydata extends DataTableSource{
  final List <Map<String,dynamic>> _dataDraftsurat = List.generate(
    200, 
    (index) => {
      'dari': 'dinas sosial',
      'perihal': 'Test app  $index',
    });

  @override
  DataRow? getRow(int index){
    return DataRow(cells: [
    DataCell(Text(_dataDraftsurat[index]['dari'])),
    DataCell(Text(_dataDraftsurat[index]['perihal'])),
    DataCell(PopupMenuButton<int>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: 1,
          child: Row(
            children: [
              Icon(
                Icons.edit_document,
                color: Colors.blue,
                ),
              SizedBox(
                width: 10,
              ),
              Text("Edit")
            ],
          ),
        ),
        const PopupMenuItem(
          value: 2,
          child: Row(
            children: [
              Icon(
                Icons.delete_outline_outlined,
                color: Colors.blue,
                ),
              SizedBox(
                width: 10,
              ),
              Text("Hapus")
            ],
          ),
        ),
        const PopupMenuItem(
          value: 3,
          child: Row(
            children: [
              Icon(
                Icons.remove_red_eye_sharp,
                color: Colors.blue,
                ),
              SizedBox(
                width: 10,
              ),
              Text("Penerima")
            ],
          ),
        ),
        const PopupMenuItem(
          value: 4,
          child: Row(
            children: [
              Icon(
                Icons.remove_red_eye_sharp,
                color: Colors.blue,
                ),
              SizedBox(
                width: 10,
              ),
              Text("Status Paraf")
            ],
          ),
        ),
      ],
      offset: Offset(0,35),
      elevation: 1,
      onSelected: (value){
        if (value == 1){
          
        }
        else if (value == 2){

        }
        else if (value == 3){
          
        }
        else if (value == 4){
          
        }
      },
    )

    )
    ]);
  }


  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _dataDraftsurat.length;

  @override
  int get selectedRowCount => 0;

}

