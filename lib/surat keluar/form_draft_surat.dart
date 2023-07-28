import 'package:flutter/material.dart';

class formDraftSurat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedItem = 'Biasa'; // Initial selected item

  List<String> _dropdownItems = ['Biasa', 'Menengah', 'Penting'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          'Form Draft Surat',
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
                Navigator.of(context, rootNavigator: true).pushNamed("/about");
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
                Navigator.of(context, rootNavigator: true).pushNamed("/profil");
              },
            ),
            ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset('assets/check.png'),
              ),
              title: Text('Permohonan Paraf'),
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed("/paraf");
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
                                Navigator.of(context, rootNavigator: true).pushNamed("/pengesahan");
                              },
                            ),
                            ListTile(
                              title: Text('Recheck'),
                              onTap: () {
                                Navigator.of(context, rootNavigator: true).pushNamed("/recheck");
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
                Navigator.of(context, rootNavigator: true).pushNamed("/suratMasuk");
              },
            ),
            ExpansionTile(
              collapsedBackgroundColor: Color.fromARGB(255, 224, 243, 255),
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
                        width: 220,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Surat Keluar'),
                              onTap: () {
                                Navigator.of(context, rootNavigator: true).pushNamed("/suratKeluar");
                              },
                            ),
                            ListTile(
                              tileColor: Color.fromARGB(255, 224, 243, 255),
                              title: Text('Draft Surat'),
                              onTap: () {
                                Navigator.of(context, rootNavigator: true).pushNamed("/draftSurat");
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
                                Navigator.of(context, rootNavigator: true).pushNamed("/disposisiMasuk");
                              },
                            ),
                            ListTile(
                              title: Text('Disposisi Keluar'),
                              onTap: () {
                                Navigator.of(context, rootNavigator: true).pushNamed("/disposisiKeluar");
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
                Navigator.of(context, rootNavigator: true).pushNamed("/agenda");
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
                Navigator.of(context, rootNavigator: true).pushNamed("/help");
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pushNamed("/");
              },
              child: const Text('logout'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Container(
              height: 1200,
              width: 360,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.all(8), child: Text('Kategori: ')),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 340,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: DropdownButton<String>(
                      value: _selectedItem,
                      items: _dropdownItems.map((String item) {
                    return DropdownMenuItem<String>(
                       value: item,
                       child: Text(item),
                    );
                    }).toList(),
                    onChanged: (String? selectedItem) {
                      setState(() {
                        _selectedItem = selectedItem!;
                    });
                    },
                    ),
                  ),
                  Container(margin: EdgeInsets.all(8), child: Text('Kepada: ')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Input Penerima',
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(8), child: Text('Penanda Tangan')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Input Pengesah',
                    ),
                  ),
                  Container(margin: EdgeInsets.all(8), child: Text('File')),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 340,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(children: [
                      ElevatedButton(onPressed: (){}, 
                      child: Text('Pilih File'))
                    ]),
                  ),
                  Container(margin: EdgeInsets.all(8), child: Text('Nomor Surat: ')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(8), child: Text('Tanggal Surat:')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'dd/mm/yyyy',
                    ),
                  ),
                  Container(margin: EdgeInsets.all(8), child: Text('Tempat Kegiatan: ')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(8), child: Text('Tanggal Kegiatan:')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'dd/mm/yyyy',
                    ),
                  ),
                  Container(margin: EdgeInsets.all(8), child: Text('Waktu Dari: ')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: '--:--',
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(8), child: Text('Waktu Sampai:')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: '--:--',
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(8), child: Text('Perihal:')),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 60,
                    padding: EdgeInsets.all(8),
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Simpan'),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
