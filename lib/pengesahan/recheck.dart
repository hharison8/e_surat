import 'package:flutter/material.dart';
import 'package:flutter_application_1/main/dataperohonanparaf.dart';

List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Terverifikasi"),value: "Terverifikasi"),
    const DropdownMenuItem(child: Text("Belum Terverifikasi"),value: "Belum Terverifikasi"),
  ];
  return menuItems;
}

class recheck extends StatefulWidget {
  @override
  State<recheck> createState() => _recheckState();
}

class _recheckState extends State<recheck> {
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
          'Recheck',
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
              collapsedBackgroundColor: Color.fromARGB(255, 224, 243, 255),
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
                            tileColor: const Color.fromARGB(255, 224, 243, 255),
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
                    SizedBox(
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
                          DataColumn(label: Text('dari')),
                          DataColumn(label: Text('perihal')),
                          DataColumn(label: Text('action')),
                        ],
                        horizontalMargin: 8,
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
                  Navigator.pushNamed(context, '/pdfViewrecheck');
                  },
                  child: Text('Accept', style: TextStyle(fontSize: 14),), 
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
