import 'package:flutter/material.dart';

class mydata extends DataTableSource{
  final List <Map<String,dynamic>> _dataSuratmasuk = List.generate(
    200, 
    (index) => {
      'dari': 'dinas sosial',
      'perihal': 'Test app  $index',
    });

  @override
  DataRow? getRow(int index){
    return DataRow(cells: [
    DataCell(Text(_dataSuratmasuk[index]['dari'])),
    DataCell(Text(_dataSuratmasuk[index]['perihal'])),
    DataCell(PopupMenuButton<int>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      itemBuilder: (BuildContext ctx) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                    Navigator.pushNamed(ctx, '/pdfViewSuratMasuk');
                  },
                child: 
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye_sharp,
                        color: Colors.blue,
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("View Document")
                    ],
                  ),
              ),
            ],
          ),
        ),
        const PopupMenuItem(
          value: 2,
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
          value: 3,
          child: Row(
            children: [
              Icon(
                Icons.history,
                color: Colors.blue,
                ),
              SizedBox(
                width: 10,
              ),
              Text("Distory disposisi")
            ],
          ),
        ),
      ],
      offset: Offset(0,35),
      elevation: 1,
    )
    )
    ]);
  }


  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _dataSuratmasuk.length;

  @override
  int get selectedRowCount => 0;

}

