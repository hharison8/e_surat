import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void _showPopupAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Sukses'),
        content: Text('Surat Diaccept'),
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
}

void _showTextFieldAlert(BuildContext context) {
  TextEditingController textController1 = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Revisi'),
        content: Container(
          width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ensures the dialog box takes minimum space
            children: [
              Container(
                padding: EdgeInsets.all(4),
              child: TextField(
                
                controller: textController1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
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

              // Process the values as needed
              print('Value 1: $value1');

              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Sukses'),
                    content: Text('Revisi dikirim'),
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

class pdfView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          'Permohonan Paraf',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
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
              title: Text('Dashboard'),
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
              title: Text('Profil'),
              onTap: () {
                Navigator.pushNamed(context, '/profil');
              },
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 224, 243, 255),
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/check.png'),
              ),
              title: Text('Permohonan Paraf'),
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
              title: Text('Pengesahan'),
              children: [
                Container(
                  height: 130,
                  width: 260,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 8,
                        height: 120,
                        child: const ColoredBox(
                            color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                      Container(
                        height: 120,
                        width: 150,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Pengesahan'),
                              onTap: () {
                                Navigator.pushNamed(context, '/pengesahan');
                              },
                            ),
                            ListTile(
                              title: Text('Recheck'),
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
              title: Text('Surat Masuk'),
              onTap: () {
                Navigator.pushNamed(context, '/suratMasuk');
              },
            ),
            ExpansionTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/suratKeluar.png'),
              ),
              title: Text('Surat Keluar'),
              children: [
                Container(
                  height: 130,
                  width: 260,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 8,
                        height: 120,
                        child: const ColoredBox(
                            color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                      Container(
                        height: 120,
                        width: 150,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Surat Keluar'),
                              onTap: () {
                                Navigator.pushNamed(context, '/suratKeluar');
                              },
                            ),
                            ListTile(
                              title: Text('Draft Surat'),
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
              title: Text('Disposisi'),
              children: [
                Container(
                  height: 130,
                  width: 260,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 8,
                        height: 120,
                        child: const ColoredBox(
                            color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                      Container(
                        height: 120,
                        width: 150,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Disposisi Masuk'),
                              onTap: () {
                                Navigator.pushNamed(context, '/disposisiMasuk');
                              },
                            ),
                            ListTile(
                              title: Text('Disposisi Keluar'),
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
              title: Text('Agenda'),
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
              title: Text('help'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(16),
                child: const Center(
                  child: Text('Test/001',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                )),
            Container(
              margin: EdgeInsets.all(16),
              width: 350,
              height: 500,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.grey,
                width: 32.0,
              )),
              child: SfPdfViewer.asset('assets/sample.pdf'),
            ),
            Container(
              height: 20,
              width: 350,
            ),
            Container(
              padding: EdgeInsets.all(16),
              width: 350,
              height: 424,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 223, 223, 223),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sifat :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Biasa',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Tanggal Surat :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '23/09/2023',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Perihal :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Test',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Tanggal Kegiatan :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '23/09/2023',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Dari :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '08.00.00',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Sampai :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '11.00.00',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Tempat Kegiatan :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Test',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 100,
              padding: EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 140,
                    child: ElevatedButton(
                     onPressed: () {
                      _showTextFieldAlert(context);
                     },
                     style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red),),
                     child: Text('Revisi', style: TextStyle(fontSize: 14),), 
                    )
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 140,
                    child: ElevatedButton(
                     onPressed: () {
                      _showPopupAlert(context);
                     },
                     child: Text('Accept', style: TextStyle(fontSize: 14),), 
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
