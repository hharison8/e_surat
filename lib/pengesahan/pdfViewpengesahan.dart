import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void _showPopupAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Sukses'),
        content: const Text('Surat Diaccept'),
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

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Revisi'),
        content: Container(
          width: MediaQuery.of(context).size.width *
              0.8, // Adjust the width as needed
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // Ensures the dialog box takes minimum space
            children: [
              Container(
                padding: const EdgeInsets.all(4),
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
            child: const Text('Cancel'),
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
                    title: const Text('Sukses'),
                    content: const Text('Revisi dikirim'),
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

class pdfViewpengesahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          'Pengesahan',
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
              collapsedBackgroundColor: const Color.fromARGB(255, 224, 243, 255),
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
                        child: ColoredBox(
                            color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                      Container(
                        height: 120,
                        width: 220,
                        child: Column(
                          children: [
                            ListTile(
                              tileColor: const Color.fromARGB(255, 224, 243, 255),
                              title: const Text('Pengesahan'),
                              onTap: () {
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
                        child: ColoredBox(
                            color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                      Container(
                        height: 120,
                        width: 150,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('Surat Keluar'),
                              onTap: () {
                                Navigator.pushNamed(context, '/suratKeluar');
                              },
                            ),
                            ListTile(
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
                        child: ColoredBox(
                            color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                      Container(
                        height: 120,
                        width: 150,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('Disposisi Masuk'),
                              onTap: () {
                                Navigator.pushNamed(context, '/disposisiMasuk');
                              },
                            ),
                            ListTile(
                              title: const Text('Disposisi Keluar'),
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/disposisiKeluar');
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
              onPressed: () {
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
                margin: const EdgeInsets.all(16),
                child: const Center(
                  child: Text('Test/001',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                )),
            Container(
              width: 320,
              height: 450,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.grey,
                width: 16.0,
              )),
              child: SfPdfViewer.asset('assets/sample.pdf'),
            ),
            Container(
              width: 340,
              height: 50,
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                child: const Text('Detail Surat'),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Sifat :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Biasa',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Tanggal Surat :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  '23/09/2023',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Perihal :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Test',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Tanggal Kegiatan :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  '23/09/2023',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Dari :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  '08.00.00',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Sampai :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  '11.00.00',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Tempat Kegiatan :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Test',
                                  style: TextStyle(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Container(
                                child:Center( 
                                  child: ElevatedButton.icon(
                                    onPressed: (){},
                                    icon: const Icon(Icons.download),
                                    label: const Text('Unduh File')))
                                ),
                              ],
                            ));
                      });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                ),
              ),
            ),
            Container(
              width: 355,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 140,
                      child: ElevatedButton(
                        onPressed: () {
                          _showTextFieldAlert(context);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        child: const Text(
                          'Revisi',
                          style: TextStyle(fontSize: 14),
                        ),
                      )),
                  const Spacer(),
                  Container(
                      height: 50,
                      width: 140,
                      child: ElevatedButton(
                        onPressed: () {
                          _showPopupAlert(context);
                        },
                        child: const Text(
                          'TTD',
                          style: TextStyle(fontSize: 14),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
