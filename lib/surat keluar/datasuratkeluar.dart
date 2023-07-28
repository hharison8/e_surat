import 'package:flutter/material.dart';

class mydata extends DataTableSource{
  final List <Map<String,dynamic>> _dataSuratkeluar = List.generate(
    200, 
    (index) => {
      'dari': 'dinas sosial',
      'perihal': 'Test app  $index',
    });

  @override
  DataRow? getRow(int index){
    return DataRow(cells: [
    DataCell(Text(_dataSuratkeluar[index]['dari'])),
    DataCell(Text(_dataSuratkeluar[index]['perihal'])),
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
              Text("Edit")
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
              Text("penerima")
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
  int get rowCount => _dataSuratkeluar.length;

  @override
  int get selectedRowCount => 0;

}

