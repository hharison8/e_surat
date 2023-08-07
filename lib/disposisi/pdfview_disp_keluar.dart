import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdfView_dispkeluar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          'Disposisi Keluar',
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
                        width: 150,
                        child: Column(
                          children: [
                            ListTile(
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
              collapsedBackgroundColor: const Color.fromARGB(255, 224, 243, 255),
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
                        width: 220,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('Disposisi Masuk'),
                              onTap: () {
                                Navigator.pushNamed(context, '/disposisiMasuk');
                              },
                            ),
                            ListTile(
                              tileColor: const Color.fromARGB(255, 224, 243, 255),
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
                        return const SingleChildScrollView(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dari :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'test',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Instruksi :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'test',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Perihal :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Test',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Tujuan :',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'Sekretaris Dinas Pekerjaan Umum dan Penataan Ruang Kabupaten Gianyar',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Tanggal : 2023-07-10 09:56:01',
                                  style: TextStyle(fontSize: 14,),
                                ),
                                Text(
                                  'Status: Diproses',
                                  style: TextStyle(fontSize: 14,),
                                ),
                                Text(
                                  'Jawaban: ',
                                  style: TextStyle(fontSize: 14,),
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
          ],
        ),
      ),
    );
  }
}
