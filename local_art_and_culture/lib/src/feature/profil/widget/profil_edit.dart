import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class ProfilePictureWidget extends StatefulWidget {
  final String imageUrl;
  final Function(String) onImageChanged;

  const ProfilePictureWidget({
    Key? key,
    required this.imageUrl,
    required this.onImageChanged,
  }) : super(key: key);

  @override
  _ProfilePictureWidgetState createState() => _ProfilePictureWidgetState();
}

class _ProfilePictureWidgetState extends State<ProfilePictureWidget> {
  late String _uploadedImageUrl;

  @override
  void initState() {
    super.initState();
    _uploadedImageUrl = widget.imageUrl;
  }

  Future<void> _pickImage() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null || result.files.isEmpty) return;

    final file = result.files.first;
    setState(() {
      _uploadedImageUrl = file.path ?? '';
    });

    widget.onImageChanged(_uploadedImageUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 169,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: _uploadedImageUrl.isNotEmpty &&
                      File(_uploadedImageUrl).existsSync()
                  ? DecorationImage(
                      image: FileImage(File(_uploadedImageUrl)),
                      fit: BoxFit.fill,
                    )
                  : const DecorationImage(
                      image: AssetImage(
                          'path_to_placeholder_image'), // Ganti dengan path ke placeholder image
                      fit: BoxFit.fill,
                    ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                _pickImage(); // Memanggil fungsi untuk memilih gambar saat foto profil ditekan
              },
              child: const Text(
                'Ubah Foto Profil',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF3653B0),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
