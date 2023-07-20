import 'package:flutter/material.dart';


class formDraftSurat extends StatelessWidget {
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
                    Container(
                      height: 120,
                      width: 150,
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
                    Container(
                      height: 120,
                      width: 150,
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text('Surat Keluar'),
                            onTap: (){
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
                        child: ColoredBox(color: Color.fromARGB(255, 224, 243, 255)),
                      ),
                    Container(
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
            Container(
              width: 2,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 114, 127, 252)
              ),
              child: const Center(
                child: Text('logout'),
              ),
            )
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
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Input Kategori',
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
                      Container(
                        padding: EdgeInsets.all(13),
                        height: 45,
                        width: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromARGB(255, 224, 224, 224),
                        ),
                        child: Text(
                          'Pilih FIle',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )
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
