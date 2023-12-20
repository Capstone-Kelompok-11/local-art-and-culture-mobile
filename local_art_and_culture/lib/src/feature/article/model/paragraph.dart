// Definisi kelas Paragraph
class Paragraph {
  // Variabel untuk menyimpan sub judul paragraf (opsional)
  final String? subTitle;

  // Variabel untuk menyimpan teks paragraf (wajib)
  final String text;

  // Konstruktor kelas Paragraph dengan parameter opsional dan wajib
  const Paragraph({
    this.subTitle, // Sub judul dapat kosong (opsional)
    required this.text, // Teks paragraf wajib diisi
  });
}
