import 'package:flutter/material.dart';

class formDraftSurat extends StatelessWidget {
  const formDraftSurat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedItem = 'Biasa'; // Initial selected item

  List<String> _dropdownItems = ['Biasa', 'Menengah', 'Penting'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
              title: const Text('Dashboard'),
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
              title: const Text('Profil'),
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
              title: const Text('Permohonan Paraf'),
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
                                Navigator.of(context, rootNavigator: true).pushNamed("/pengesahan");
                              },
                            ),
                            ListTile(
                              title: const Text('Recheck'),
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
              title: const Text('Surat Masuk'),
              onTap: () {
                Navigator.of(context, rootNavigator: true).pushNamed("/suratMasuk");
              },
            ),
            ExpansionTile(
              collapsedBackgroundColor: const Color.fromARGB(255, 224, 243, 255),
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
                        width: 220,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('Surat Keluar'),
                              onTap: () {
                                Navigator.of(context, rootNavigator: true).pushNamed("/suratKeluar");
                              },
                            ),
                            ListTile(
                              tileColor: const Color.fromARGB(255, 224, 243, 255),
                              title: const Text('Draft Surat'),
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
                                Navigator.of(context, rootNavigator: true).pushNamed("/disposisiMasuk");
                              },
                            ),
                            ListTile(
                              title: const Text('Disposisi Keluar'),
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
              title: const Text('Agenda'),
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
              title: const Text('help'),
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
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.all(8), child: const Text('Kategori: ')),
                  Container(
                    padding: const EdgeInsets.all(10),
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
                  Container(margin: const EdgeInsets.all(8), child: const Text('Kepada: ')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Input Penerima',
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(8), child: const Text('Penanda Tangan')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Input Pengesah',
                    ),
                  ),
                  Container(margin: const EdgeInsets.all(8), child: const Text('File')),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 340,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(children: [
                      ElevatedButton(onPressed: (){}, 
                      child: const Text('Pilih File'))
                    ]),
                  ),
                  Container(margin: const EdgeInsets.all(8), child: const Text('Nomor Surat: ')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(8), child: const Text('Tanggal Surat:')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'dd/mm/yyyy',
                    ),
                  ),
                  Container(margin: const EdgeInsets.all(8), child: const Text('Tempat Kegiatan: ')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(8), child: const Text('Tanggal Kegiatan:')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'dd/mm/yyyy',
                    ),
                  ),
                  Container(margin: const EdgeInsets.all(8), child: const Text('Waktu Dari: ')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: '--:--',
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(8), child: const Text('Waktu Sampai:')),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: '--:--',
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(8), child: const Text('Perihal:')),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 60,
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        onPressed: (){},
                        child: const Text('Simpan'),
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
