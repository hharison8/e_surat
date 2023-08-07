import 'package:flutter/material.dart';

void _showPenerimaAlert(BuildContext context) {

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Penerima'),
        content: SizedBox(
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

void _showPengesahAlert(BuildContext context) {

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Penerima'),
        content: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ensures the dialog box takes minimum space
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                child: const Align(alignment: Alignment.centerLeft,
                child: Text(
                  'NAMA PENGESAH',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                    ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.blue),
                child: const Align(alignment: Alignment.centerLeft,
                child: Text('Belum',style: TextStyle(color: Colors.white),)
                ),
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

void _showTextFieldAlert(BuildContext context) {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  TextEditingController textController3 = TextEditingController();
  TextEditingController textController4 = TextEditingController();
  TextEditingController textController5 = TextEditingController();
  TextEditingController textController6 = TextEditingController();
  TextEditingController textController7 = TextEditingController();
  TextEditingController textController8 = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Edit'),
        content: SizedBox(
          width: MediaQuery.of(context).size.width * 1, // 80% of the screen width
          height: MediaQuery.of(context).size.height * 0.6,
          child: SingleChildScrollView(
            child: Column( // Ensures the dialog box takes minimum space
            children: [
              Container(
                padding: const EdgeInsets.all(4),
              child: TextField(
                controller: textController1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kategori',
                ),
              ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
              child: TextField(
                controller: textController2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nomor Surat',
                ),
              ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
              child: TextField(
                controller: textController3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tanggal Surat',
                ),
                obscureText: true,
              ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: TextField(
                  controller: textController4,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Tempat Kegiatan'
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
              child: TextField(
                controller: textController1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tanggal Kegiatan',
                ),
              ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
              child: TextField(
                controller: textController1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Waktu Dari',
                ),
              ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
              child: TextField(
                controller: textController1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Waktu Sampai',
                ),
              ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: TextField(
                  controller: textController8,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Perihal',
                    contentPadding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
                  ),
                ),
              ),
            ],
          ),
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Access the entered values
              String value1 = textController1.text;
              String value2 = textController2.text;
              String value3 = textController3.text;
              String value4 = textController4.text;
              String value5 = textController5.text;
              String value6 = textController6.text;
              String value7 = textController7.text;
              String value8 = textController8.text;

              // Process the values as needed
              print('Value 1: $value1');
              print('Value 2: $value2');
              print('Value 3: $value3');
              print('Value 4: $value4');
              print('Value 5 : $value5');
              print('Value 6 : $value6');
              print('Value 7 : $value7');
              print('Value 8 : $value8');

              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Sukses'),
                    content: const Text('Perubahan Disimpan'),
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
            },
              icon: const Icon(
                Icons.save,
                size: 24,
              ),
              label: const Text('Simpan'),
            ),
        ],
      );
    },
  );
}



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
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      itemBuilder: (BuildContext ctx) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                    _showTextFieldAlert(ctx);
                  },
                child: 
                  const Row(
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
        PopupMenuItem(
          value: 3,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                    _showPenerimaAlert(ctx);
                  },
                child: 
                  const Row(
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
        PopupMenuItem(
          value: 4,
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                    _showPengesahAlert(ctx);
                  },
                child: 
                  const Row(
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
  int get rowCount => _dataDraftsurat.length;

  @override
  int get selectedRowCount => 0;

}

