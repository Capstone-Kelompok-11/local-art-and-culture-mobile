import 'package:flutter/material.dart';

class UbahAlamat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: MyAppBar(),
      body: AddressForm(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        'Ubah Alamat',
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
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PersonalInfoContainer(),
          const SizedBox(width: 16),
          AddressContainer(),
          const SizedBox(width: 16),
          ToggleButtonContainer(),
          const SizedBox(width: 16),
          const ButtonContainer(),
        ],
      ),
    );
  }
}

class PersonalInfoContainer extends StatelessWidget {
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
              SectionContainer(
                title: 'Nomor Telepon Cadangan',
                hintText: 'Masukkan Nomor Telepon Cadangan',
              ),
            ]));
  }
}

class AddressContainer extends StatelessWidget {
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
                title: 'Catatan',
                hintText: 'Masukkan Catatan',
              ),
            ]));
  }
}

class SectionContainer extends StatelessWidget {
  final String title;
  final String hintText;

  const SectionContainer({
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
  const ButtonContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width - 32;

    void _saveDataAndReturn() {
      // TODO: Fetch data from the text fields and save it
      // Perform saving logic here...
      Navigator.pop(context);
    }

    void _deleteAddress() {
      // TODO: Implement deletion logic here
      // This is just an example using a dialog for confirmation

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Hapus Alamat'),
            content:
                const Text('Apakah Anda yakin ingin menghapus alamat ini?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  // TODO: Implement logic to delete address
                  // Perform deletion here...
                  // Example: Deleting the address and returning to the previous screen
                  _deleteAddress();
                  Navigator.pop(context); // Close the dialog
                },
                child: const Text('Hapus'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: const Text('Batal'),
              ),
            ],
          );
        },
      );
    }

    void deleteAddress() {
      // Perform deletion logic here...
      // For example:
      // Delete the address data from storage or database
      // Delete the address associated with this card
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _deleteAddress,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
              side: const BorderSide(color: Color.fromRGBO(153, 153, 153, 1)),
              minimumSize: Size(containerWidth, 0),
            ),
            child: const Text(
              'Hapus Alamat',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
                fontFamily: 'Plus Jakarta Sans',
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _saveDataAndReturn,
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
