import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/profil/widget/profil_edit.dart';
import 'widget/profil_edit_input.dart';

class EditScreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  String _uploadedImageUrl = "";
  late List<TextEditingController> controllers;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(3, (_) => TextEditingController());
  }

  void handleImageChanged(String newImageUrl) {
    setState(() {
      _uploadedImageUrl = newImageUrl;
    });
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 393,
            height: 766,
            padding: const EdgeInsets.symmetric(vertical: 48),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        Expanded(
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ]),
                    ),
                    const Expanded(
                      child: SizedBox(
                        child: Text(
                          'Edit Profil',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 20,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ProfilePictureWidget(
                  imageUrl: _uploadedImageUrl,
                  onImageChanged: handleImageChanged,
                ),
                const SizedBox(height: 40),
                ProfileInputWidget(
                  label: 'Username',
                  controllers: [controllers[0]],
                ),
                const SizedBox(height: 24),
                ProfileInputWidget(
                  label: 'Email',
                  controllers: [controllers[1]],
                ),
                const SizedBox(height: 24),
                ProfileInputWidget(
                  label: 'Nomor Telepon',
                  controllers: [controllers[2]],
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // Lakukan operasi penyimpanan data di sini
                    // Setelah penyimpanan selesai, kembali ke halaman profil
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3653B0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Simpan Perubahan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
