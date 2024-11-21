import 'package:flutter/material.dart';

class TampilanProfile extends StatefulWidget {
  const TampilanProfile({super.key});

  @override
  State<TampilanProfile> createState() => _TampilanProfileState();
}

class _TampilanProfileState extends State<TampilanProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Profil',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/001/840/612/original/picture-profile-icon-male-icon-human-or-people-sign-and-symbol-free-vector.jpg'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Nama Pengguna',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10),
              const Text('email@example.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              const SizedBox(height: 20),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Nama Lengkap'),
                  subtitle: Text('Example'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Nomor Telepon'),
                  subtitle: Text('+62 812 3456 7890'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Alamat'),
                  subtitle: Text('Jakarta, Indonesia'),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.history),
                  title: const Text('Histori'),
                  onTap: (){
                    // aksi ke hitory
                  },
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Pengaturan Akun'),
                  onTap: (){
                    // aksi ke pengaturan akun
                  },
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.arrow_back),
                  title: const Text('Keluar'),
                  onTap: (){
                    // aksi ke halaman login
                  },
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
