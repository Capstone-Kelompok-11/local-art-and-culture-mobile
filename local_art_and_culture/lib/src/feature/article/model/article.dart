import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

import 'dummyarticle.dart';
import 'paragraph.dart';

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

Future<List<Article>> fetchArticle() async {
  final response = await http.get(Uri.parse('https://lokasani.my.id/article'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);

    final List<dynamic> articlesData = data['data']['data'];

    int gambar = 1;

    List<Article> article = articlesData.map((articleData) {
      var paragraph = dummy;
      var articleImage = 'assets/img/artikel/artikel${gambar}.png';
      var picture = 'assets/img/profil/bambang.png';

      int view = Random().nextInt(300);
      if (gambar % 2 == 0) {
        picture = 'assets/img/profil/anindya.png';
      } else {
        picture = 'assets/img/profil/bambang.png';
      }
      if (gambar > 5) {
        paragraph = dummyParagraph[0];
      }
      if (articleData['view_amount'] != null) {
        view = articleData['view_amount'];
        print('view amount : view ${view}');
      } else {
        view = 0;
      }
      gambar++;
      if(gambar == 11) {
        gambar = 0;
      }
      return Article(
        title: articleData['title'],
        imageUrl: articleImage,
        copywriter: articleData['admin']['name'],
        copywriterPicture: picture,
        paragraphs: paragraph,
        likesAmount: articleData['total_like'],
        viewAmount: view,
        dateTime: DateTime.parse(articleData['posted_at']),
        // articleData['admin']['phone_number']
      );
    }).toList();
    return article;
  } else {
    throw Exception('Error fetching articles: ${response.statusCode}');
  }
}

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
