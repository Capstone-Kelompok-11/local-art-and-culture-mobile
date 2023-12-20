import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

import 'dummyarticle.dart';
import 'paragraph.dart';

// Mendefinisikan kelas Article yang merepresentasikan struktur data artikel
class Article {
  final String title;
  final String imageUrl;
  final String copywriter;
  final String copywriterPicture;
  final List<Paragraph> paragraphs;
  final int likesAmount;
  final int viewAmount;
  final DateTime dateTime;

  Article({
    required this.title,
    required this.imageUrl,
    required this.copywriter,
    required this.copywriterPicture,
    required this.paragraphs,
    required this.likesAmount,
    required this.viewAmount,
    required this.dateTime,
  });
}

// Fungsi async untuk mengambil data artikel dari API
Future<List<Article>> fetchArticle() async {
  // Mengirimkan permintaan HTTP GET ke URL artikel
  final response = await http.get(Uri.parse('https://lokasani.my.id/article'));

  // Memeriksa status kode respons
  if (response.statusCode == 200) {
    // Mendekodekan respons JSON menjadi Map
    final Map<String, dynamic> data = json.decode(response.body);

    // Mendapatkan data artikel dari dalam Map
    final List<dynamic> articlesData = data['data']['data'];

    // Inisialisasi variabel untuk mengatur gambar dan indeks paragraf
    int gambar = 1;
    int indexParagraph = 0;

    // Mengambil data artikel dan membuat instance Article
    List<Article> article = articlesData.map((articleData) {
      var paragraph = dummy;
      var articleImage = 'assets/img/artikel/artikel${gambar}.png';
      var picture = 'assets/img/profil/bambang.png';

      // Menghasilkan jumlah tampilan acak
      int view = Random().nextInt(300);

      // Mengatur gambar profil berdasarkan kecocokan gambar
      if (gambar % 2 == 0) {
        picture = 'assets/img/profil/anindya.png';
      } else {
        picture = 'assets/img/profil/bambang.png';
      }

      // Memeriksa apakah jumlah tampilan dalam data artikel tidak null
      paragraph = dummyParagraph[indexParagraph];
      if (articleData['view_amount'] != null) {
        view = articleData['view_amount'];
        print('view amount : view ${view}');
      } else {
        view = 0;
      }

      // Increment variabel gambar dan indeks paragraf
      gambar++;
      indexParagraph++;

      // Reset gambar dan indeks paragraf jika sudah mencapai batas tertentu
      if(gambar == 11 || indexParagraph == 5) {
        gambar = 1;
        indexParagraph = 0;
      }

      // Membuat instance Article dengan data yang diperoleh
      return Article(
        title: articleData['title'],
        imageUrl: articleImage,
        copywriter: articleData['admin']['name'],
        copywriterPicture: picture,
        paragraphs: paragraph,
        likesAmount: articleData['total_like'],
        viewAmount: view,
        dateTime: DateTime.parse(articleData['posted_at']),
      );
    }).toList();

    // Mengembalikan daftar artikel yang telah dibuat
    return article;
  } else {
    // Melempar exception jika terjadi kesalahan saat mengambil artikel
    throw Exception('Error fetching articles: ${response.statusCode}');
  }
}

// Membuat daftar paragraf dummy untuk artikel
var dummy = [
  const Paragraph(
    text:
        "Di tengah arus globalisasi dan perkembangan mode yang pesat, batik tetap menjelma sebagai pakaian berwibawa yang merayakan keberagaman budaya Indonesia. Dengan keunikan corak dan motif yang mencerminkan identitas daerah, batik bukan hanya sekadar kain, tetapi juga warisan seni yang memancarkan karakter tradisional. Kini, semakin banyak desainer tanah air yang mengintegrasikan keelokan batik dalam gaya berpakaian kekinian, membuktikan bahwa batik tidak hanya hidup dalam sejarah, tetapi juga merajut kisahnya dalam estetika mode masa kini.",
  ),
  const Paragraph(
    subTitle: "Menyemarakkan Kembali Kecantikan Batik",
    text:
        "Dalam era ini, desainer mode lokal terus menjalankan eksplorasi kreatif untuk menyemarakkan kembali kecantikan batik. Motif tradisional yang telah melewati berabad-abad diberikan sentuhan modern, menghasilkan kombinasi yang unik dan menyegarkan. Warna-warna cerah dan padu-padan motif yang cerdik menjadi pilihan untuk memberikan sentuhan kekinian pada pakaian batik. Dengan demikian, batik tidak hanya menjadi pilihan pakaian formal, tetapi juga menjadi gaya berpakaian sehari-hari yang memancarkan keanggunan dan kesejukan.",
  ),
  const Paragraph(
    subTitle: "Menyatukan Warisan dan Gaya",
    text:
        "Pemakaian batik tidak lagi hanya terbatas pada momen-momen khusus, melainkan menjadi pilihan gaya hidup yang menekankan identitas dan kebanggaan akan warisan budaya. Anak muda Indonesia dengan bangga mengenakan batik dalam berbagai kesempatan, mulai dari aktivitas sehari-hari hingga acara formal. Hal ini menjadi bentuk afirmasi bahwa batik bukanlah sekadar busana tradisional, melainkan pernyataan identitas yang mencerminkan kekayaan budaya dan nilai-nilai luhur yang terus dijunjung tinggi. Dengan begitu, batik tidak hanya menjadi pilihan berpakaian, tetapi juga merupakan penegasan identitas bangsa dalam bingkai gaya hidup modern.",
  ),
];
