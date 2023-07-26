import 'package:flutter/material.dart';
import 'package:flutter_application_1/main/data.dart';

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
        title: Text('Edit'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max, // Ensures the dialog box takes minimum space
            children: [
              Container(
                padding: EdgeInsets.all(4),
              child: TextField(
                controller: textController1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kategori',
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.all(4),
              child: TextField(
                controller: textController2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nomor Surat',
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.all(4),
              child: TextField(
                controller: textController3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tanggal Surat',
                ),
                obscureText: true,
              ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: TextField(
                  controller: textController4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Tempat Kegiatan'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
              child: TextField(
                controller: textController1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tanggal Kegiatan',
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.all(4),
              child: TextField(
                controller: textController1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Waktu Dari',
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.all(4),
              child: TextField(
                controller: textController1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Waktu Sampai',
                ),
              ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: TextField(
                  controller: textController8,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Perihal',
                    contentPadding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: Text('Cancel'),
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
                    title: Text('Sukses'),
                    content: Text('Perubahan Disimpan'),
                    actions: [
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
              icon: Icon(
                Icons.save,
                size: 24,
              ),
              label: Text('Simpan'),
            ),
        ],
      );
    },
  );
}

List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Terverifikasi"),value: "Terverifikasi"),
    const DropdownMenuItem(child: Text("Belum Terverifikasi"),value: "Belum Terverifikasi"),
  ];
  return menuItems;
}

class draftSurat extends StatefulWidget {
  @override
  State<draftSurat> createState() => _draftSuratState();
}

class _draftSuratState extends State<draftSurat> {
  String dropdownValue = 'Belum Terverifikasi';
  final DataTableSource _data = mydata();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          'Draft Surat',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        )
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(
              height: 128,
              child: DrawerHeader(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/dashboard.png'),
              ),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/profil.png'),
              ),
              title: const Text('Profil'),
              onTap: () {
                Navigator.pushNamed(context, '/profil');
              },
            ),
            ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/check.png'),
              ),
              title: const Text('Permohonan Paraf'),
              onTap: () {
                Navigator.pushNamed(context, '/paraf');
              },
            ),
            ExpansionTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/check.png'),
              ),
              title: const Text('Pengesahan'),
              children: [
                Container(
                  height: 130,
                  width: 260,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8,
                        height: 120,
                        child: ColoredBox(color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                    SizedBox(
                      height: 120,
                      width: 220,
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text('Pengesahan'),
                            onTap: (){
                              Navigator.pushNamed(context, '/pengesahan');
                            },
                          ),
                          ListTile( 
                            title: const Text('Recheck'),
                            onTap: () {
                              Navigator.pushNamed(context, '/recheck');
                            },
                          ),
                        ],
                      ),
                    )
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/suratMasuk.png'),
              ),
              title: const Text('Surat Masuk'),
              onTap: () {
                Navigator.pushNamed(context, '/suratMasuk');
              },
            ),
            ExpansionTile(
              collapsedBackgroundColor: Color.fromARGB(255, 224, 243, 255),
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/suratKeluar.png'),
              ),
              title: const Text('Surat Keluar'),
              children: [
                Container(
                  height: 130,
                  width: 260,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8,
                        height: 120,
                        child: ColoredBox(color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                    SizedBox(
                      height: 120,
                      width: 220,
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text('Surat Keluar'),
                            onTap: (){
                              Navigator.pushNamed(context, '/suratKeluar');
                            },
                          ),
                          ListTile( 
                            tileColor: const Color.fromARGB(255, 224, 243, 255),
                            title: const Text('Draft Surat'),
                            onTap: () {
                              Navigator.pushNamed(context, '/draftSurat');
                            },
                          ),
                        ],
                      ),
                    )
                    ],
                  ),
                )
              ],
            ),
            ExpansionTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/disposisi.png'),
              ),
              title: const Text('Disposisi'),
              children: [
                Container(
                  height: 130,
                  width: 260,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8,
                        height: 120,
                        child: ColoredBox(color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                    SizedBox(
                      height: 120,
                      width: 150,
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text('Disposisi Masuk'),
                            onTap: (){
                              Navigator.pushNamed(context, '/disposisiMasuk');
                            },
                          ),
                          ListTile( 
                            title: const Text('Disposisi Keluar'),
                            onTap: () {
                              Navigator.pushNamed(context, '/disposisiKeluar');
                            },
                          ),
                        ],
                      ),
                    )
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/agenda.png'),
              ),
              title: const Text('Agenda'),
              onTap: () {
                Navigator.pushNamed(context, '/agenda');
              },
            ),
            ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/help.png'),
              ),
              title: const Text('help'),
              onTap: () {
                Navigator.pushNamed(context, '/help');
              },
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              child: const Text('logout'),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(top: 24,left: 8,right: 8,bottom: 0),
                width: 364,
                height: 120,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: const Text(
                          'Status :',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                      ),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color.fromARGB(255, 179, 179, 179), width: 2),
                            borderRadius: BorderRadius.circular(8)
                          )
                        ),
                        value: dropdownValue,
                        items: dropdownItems, 
                        icon: Image.asset('assets/more.png'),
                        onChanged: (String? newvalue) {
                          setState(() {
                            dropdownValue = newvalue!;
                          });
                        }
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(top: 0,left: 8,right: 8,bottom: 0),
                width: 364,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border(
                    top: BorderSide(
                      color: Color.fromARGB(255, 179, 179, 179)
                    )
                  )
                ),
                child: const Align(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child:
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Search', 
                            suffixIcon: Icon(Icons.search,color: Colors.black,)
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(top: 0,left: 8,right: 8,bottom: 24),
                width: 364,
                height:400,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                ),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Column(
                    children: [
                      PaginatedDataTable(
                        source: _data,
                        columns: const [
                          DataColumn(label: Text('no surat')),
                          DataColumn(label: Text('perihal')),
                        ],
                        rowsPerPage: 5,
                      ),
                    ],
                  ),
                )
              ),
              SizedBox(
                height: 50,
                width: 140,
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.pushNamed(context, '/formDraftSurat');
                  },
                  child: Text('Accept', style: TextStyle(fontSize: 14),), 
                )
              ),
              SizedBox(
                height: 50,
                width: 140,
                child: ElevatedButton(
                  onPressed: (){
                     _showTextFieldAlert(context);
                  },
                  child: Text('Edit', style: TextStyle(fontSize: 14)) ) ,)
            ],
          ),
        ),
      ),
    );
  }
}
