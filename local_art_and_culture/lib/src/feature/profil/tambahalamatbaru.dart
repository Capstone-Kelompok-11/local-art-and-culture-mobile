// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      appBar: MyAppBar(),
      body: AddressForm(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        'Tambah Alamat Baru',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Plus Jakarta Sans',
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class AddressForm extends StatelessWidget {
  const AddressForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const PersonalInfoContainer(),
          const SizedBox(width: 16),
          const AddressContainer(),
          const SizedBox(width: 16),
          const ToggleButtonContainer(),
          const SizedBox(width: 16),
          ButtonContainer(),
        ],
      ),
    );
  }
}

class PersonalInfoContainer extends StatelessWidget {
  const PersonalInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionContainer(
                title: 'Nama Penerima',
                hintText: 'Masukkan Nama Penerima',
              ),
              SectionContainer(
                title: 'Nomor Telepon',
                hintText: 'Masukkan Nomor Telepon',
              ),
            ]));
  }
}

class AddressContainer extends StatelessWidget {
  const AddressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionContainer(
                title: 'Provinsi/Kota',
                hintText: 'Masukkan Provinsi/Kota',
              ),
              SectionContainer(
                title: 'Kecamatan',
                hintText: 'Masukkan Kecamatan',
              ),
              SectionContainer(
                title: 'Kelurahan',
                hintText: 'Masukkan Kelurahan',
              ),
              SectionContainer(
                title: 'Alamat',
                hintText: 'Masukkan Alamat',
              ),
              SectionContainer(
                title: 'Tambahan Info',
                hintText: 'Tambahkan Informasi lebih',
              ),
            ]));
  }
}

class SectionContainer extends StatelessWidget {
  final String title;
  final String hintText;

  const SectionContainer({
    super.key,
    required this.title,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5, left: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Plus Jakarta Sans',
                color: Color.fromRGBO(102, 102, 102, 1),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: 'Plus Jakarta Sans',
              ),
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ToggleButtonContainer extends StatefulWidget {
  const ToggleButtonContainer({super.key});

  @override
  _ToggleButtonContainerState createState() => _ToggleButtonContainerState();
}

class _ToggleButtonContainerState extends State<ToggleButtonContainer> {
  bool isSwitched = true;

  void _toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
      child: Row(
        children: [
          const Text(
            'Buat Sebagai Alamat Utama',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Plus Jakarta Sans',
              color: Color.fromRGBO(102, 102, 102, 1),
            ),
          ),
          const Spacer(),
          Switch(
            value: isSwitched,
            activeTrackColor: const Color.fromRGBO(54, 83, 176, 1),
            onChanged: _toggleSwitch,
          ),
        ],
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width - 32;

    // Access the entered data and perform save action on button press
    void _saveDataAndReturn() {
      // TODO: Fetch data from the text fields and save it
      // Example:
      // String name = _nameController.text;
      // String phoneNumber = _phoneNumberController.text;

      // Perform saving logic here...

      // After saving, navigate back to the previous screen
      Navigator.pop(context);
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
      child: Column(
        children: [
          ElevatedButton(
            onPressed:
                _saveDataAndReturn, // Call the save method on button press
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: const Color.fromRGBO(54, 83, 176, 1),
              minimumSize: Size(containerWidth, 0),
            ),
            child: const Text(
              'Simpan',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
