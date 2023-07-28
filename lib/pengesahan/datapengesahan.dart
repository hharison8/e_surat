import 'package:flutter/material.dart';

class mydata extends DataTableSource{
  final List <Map<String,dynamic>> _dataPengesahan = List.generate(
    200, 
    (index) => {
      'no': 'Test/ $index',
      'perihal': 'Test app  $index',
    });

  @override
  DataRow? getRow(int index){
    return DataRow(cells: [
    DataCell(Text(_dataPengesahan[index]['no'])),
    DataCell(Text(_dataPengesahan[index]['perihal'])),
    DataCell(PopupMenuButton<int>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: 1,
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.blue,
                ),
              SizedBox(
                width: 10,
              ),
              Text("View Info")
            ],
          ),
        ),
        const PopupMenuItem(
          value: 2,
          child: Row(
            children: [
              Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.blue,
                ),
              SizedBox(
                width: 10,
              ),
              Text("View Document")
            ],
          ),
        ),
        const PopupMenuItem(
          value: 3,
          child: Row(
            children: [
              Icon(
                Icons.file_download_outlined,
                color: Colors.blue,
                ),
              SizedBox(
                width: 10,
              ),
              Text("Unduh")
            ],
          ),
        ),
        const PopupMenuItem(
          value: 4,
          child: Row(
            children: [
              Icon(
                Icons.cached_outlined,
                color: Colors.blue,
                ),
              SizedBox(
                width: 10,
              ),
              Text("Pindahkan ke recheck")
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
  int get rowCount => _dataPengesahan.length;

  @override
  int get selectedRowCount => 0;

}

