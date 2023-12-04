import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String profileName = '';
  String email = '';
  String phoneNumber = '';

  Future<void> _saveChangesAndReturn() async {
    // Lakukan penyimpanan perubahan ke backend atau penyimpanan data di sini

    // Kirim kembali data yang diperbarui ke halaman sebelumnya saat tombol save ditekan
    Map<String, String> updatedData = {
      'username': profileName,
      'email': email,
      // Tambahkan data lain jika diperlukan
    };

    // Kembali ke halaman sebelumnya (ProfilPage) dengan data yang diperbarui
    Navigator.pop(context, updatedData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        actions: [
          IconButton(
            onPressed: _saveChangesAndReturn,
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Username'),
              onChanged: (value) {
                setState(() {
                  profileName = value;
                });
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Phone Number'),
              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                });
              },
            ),
            // Add features to update profile picture if needed
          ],
        ),
      ),
    );
  }
}
