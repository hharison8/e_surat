import 'package:flutter/material.dart';

class suratManual extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<suratManual> {
  kategori? selectedValue;
  List<kategori?> kat = [
    kategori(id: 1, name: "Biasa"),
    kategori(id: 2, name: "Menengah"),
    kategori(id: 3, name: "Penting"),
  ];

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
  }

  // void _showTimePicker() {
  //   showTimePicker(context: context, initialTime: initialTime)
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 239, 239),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          centerTitle: true,
          title: const Text(
            'Surat Manual',
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
                                  Navigator.pushNamed(context, '/suratKeluar');
                                },
                              ),
                              ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 224, 243, 255),
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
                                  Navigator.pushNamed(
                                      context, '/disposisiMasuk');
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
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 1057,
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
                          margin: EdgeInsets.all(8), child: Text("Kategori")),
                      Container(
                          margin: EdgeInsets.all(3),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 19),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: DropdownButton<kategori?>(
                              hint: Text("Pilih Kategori"),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                              underline: SizedBox(),
                              isExpanded: true,
                              items: kat
                                  .map<DropdownMenuItem<kategori>>((e) =>
                                      DropdownMenuItem(
                                        child: Text((e?.name ?? '').toString()),
                                        value: e,
                                      ))
                                  .toList())),
                      Container(
                          margin: EdgeInsets.all(8), child: Text("File Surat")),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text('Pilih File'))
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text("Dari"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Ex : ",
                            labelText: "Masukkan Nama Pengirim",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text("Nomor Surat"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Ex : Surat/01",
                            labelText: "Masukkan Nomor Surat",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text("Tanggal Surat"),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: MaterialButton(
                            onPressed: _showDatePicker,
                            child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('Pilih Tanggal',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 15)))),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text("Tempat Kegiatan"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Ex : ",
                            labelText: "Masukkan Tempat Kegiatan",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text("Tanggal Kegiatan"),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 340,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: MaterialButton(
                            onPressed: _showDatePicker,
                            child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text('Pilih Tanggal',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 15)))),
                      ),
                      Container(
                          margin: EdgeInsets.all(8), child: Text("Waktu Dari")),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "-- ; --",
                            labelText: "Dari Jam",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                      Container(
                          margin: EdgeInsets.all(8),
                          child: Text("Waktu Sampai")),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "-- ; --",
                            labelText: "Sampai Jam",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Text("Perihal"),
                      ),
                      TextField(
                        maxLines: 6,
                        decoration: InputDecoration(
                            hintText: "Maksimal 5 baris",
                            labelText: "Masukkan Perihal Surat",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                      Container(
                        width: 340,
                        height: 60,
                        padding: EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Simpan'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class kategori {
  int? id;
  String? name;

  kategori({this.id, this.name});
}
