import 'package:flutter/material.dart';

void _showPenerimaAlert(BuildContext context) {

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Penerima'),
        content: Container(
          width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ensures the dialog box takes minimum space
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                child: const Align(alignment: Alignment.centerLeft,
                child: Text(
                  'Nomor Surat',
                  style: TextStyle(fontSize: 14),
                    ),
                ),
              ),
              Container(
                width: 1000,
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(
                  color: Colors.grey, width: 1.0,
                )),
                  child: const Row(
                    children: [
                      Text('   Test/001',style: TextStyle(fontSize: 16, color: Colors.black),),
                    ],
                  )
              ),
              Container(
                padding: const EdgeInsets.all(3),
                child: const Align(alignment: Alignment.centerLeft,
                child: Text(
                  'Penerima',
                  style: TextStyle(fontSize: 14),
                    ),
                ),
              ),
              Container(
                width: 1000,
                height: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey,),
                  child: const Row(
                    children: [
                      Text('   Dinas Kebudayaan',style: TextStyle(fontSize: 16, color: Colors.black),),
                    ],
                  )
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


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
      itemBuilder: (BuildContext ctx) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                    Navigator.pushNamed(ctx, '/pdfview_suratkeluar');
                  },
                child: 
                  Row(
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
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                    _showPenerimaAlert(ctx);
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
                      Text("Penerima")
                    ],
                  ),
              ),
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

