import 'package:flutter/material.dart';


void _showPopupAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Sukses'),
        content: const Text('Data Berhasil Diperbaharui'),
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

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Ganti Password'),
        content: Container(
          width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ensures the dialog box takes minimum space
            children: [
              Container(
                padding: const EdgeInsets.all(4),
              child: TextField(
                controller: textController1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password Lama',
                ),
                obscureText: true,
              ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
              child: TextField(
                controller: textController2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password Baru',
                ),
                obscureText: true,
              ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
              child: TextField(
                controller: textController3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Konfirmasi Password Baru',
                ),
                obscureText: true,
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
              String value2 = textController2.text;
              String value3 = textController3.text;

              // Process the values as needed
              print('Value 1: $value1');
              print('Value 2: $value2');
              print('Value 3: $value3');

              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Sukses'),
                    content: const Text('Password berhasil diperbaharui'),
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

class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          'Profil',
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
              tileColor: const Color.fromARGB(255, 224, 243, 255),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16),
                child:  const CircleAvatar(
                  backgroundImage: AssetImage('assets/default_profile.jpg'),
                  radius: 50,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child:Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      child: const Text(
                        'ojan',
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                  ),
                  const Text(
                    'kepala dinas blabla',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                  ]
                )
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Nama',
                          style: TextStyle(fontSize: 14) ,
                        ),
                      ),
                    ),
                    Container(
                      width: 1000,
                      height: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.grey,),
                      child: const Row(
                        children: [
                          Text('   OJAN ',style: TextStyle(fontSize: 16, color: Colors.black),),
                        ],
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      child: const Align(alignment: Alignment.centerLeft,
                      child: Text(
                        'Nomor Telepon',
                        style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      child: const Align(alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      child: const Align(alignment: Alignment.centerLeft,
                      child: Text(
                        'NIP',
                        style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                   Container(
                      width: 1000,
                      height: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.grey,),
                      child: const Row(
                        children: [
                          Text('   123213123131313123',style: TextStyle(fontSize: 16, color: Colors.black),),
                        ],
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      child: const Align(alignment: Alignment.centerLeft,
                      child: Text(
                        'Jabatan',
                        style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    Container(
                      width: 1000,
                      height: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.grey,),
                      child: const Row(
                        children: [
                          Text('   JABATAN TEST',style: TextStyle(fontSize: 16, color: Colors.black),),
                        ],
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      child: const Align(alignment: Alignment.centerLeft,
                      child: Text(
                        'NIK',
                        style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '123112312321321312',
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                      ),      
                        child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 180,
                            padding: const EdgeInsets.all(4),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                _showTextFieldAlert(context);
                              },
                              icon: const Icon(
                                Icons.key,
                                size: 24,
                              ),
                              label: const Text('Ganti Password')
                            ),
                          ),
                            const Spacer(),
                            Container(
                            height: 50,
                            width: 120,
                            padding: const EdgeInsets.all(4),
                            child: ElevatedButton.icon(
                              onPressed: () {
                                _showPopupAlert(context);
                              },
                              icon: const Icon(
                                Icons.save,
                                size: 24,
                              ),
                              label: const Text('Simpan'),
                            ),
                          ),
                        ],
                      )
                      ),
                  ],
                  )
              )
          ]
          ),
        ),
      ),      
    );
  }
}
