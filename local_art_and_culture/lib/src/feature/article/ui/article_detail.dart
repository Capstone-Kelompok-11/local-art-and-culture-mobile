import 'package:flutter/material.dart';
import 'package:local_art_and_culture/src/feature/article/components/color.dart';
import 'package:local_art_and_culture/src/feature/article/model/article.dart';
// article_detail.dart = halaman detail artikel setelah diklik
// Widget untuk menampilkan detail artikel
class ArticleDetail extends StatefulWidget {
  final Article article;
  const ArticleDetail({
    super.key,
    required this.article,
  });

  @override
  State<ArticleDetail> createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  late List<Article> listArticle = [];
  late Article article;

  @override
  void initState() {
    super.initState();
    article = widget.article;
    _loadArticle();
  }

  // Fungsi untuk memuat artikel
  Future<void> _loadArticle() async {
    try {
      listArticle = await fetchArticle();
    } catch (error) {
      print('Error fetching article: $error');
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    if (listArticle.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Widget untuk menampilkan gambar artikel
            ArticleImage(
              deviceWidth: deviceWidth,
              article: article,
            ),
            // Konten artikel
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                children: [
                  // Widget untuk menampilkan judul artikel
                  Title(
                    article: article,
                  ),
                  // Widget untuk menampilkan informasi penulis
                  CopyWriter(
                    article: article,
                  ),
                  // Widget untuk menampilkan konten artikel
                  ArticleContent(
                    article: article,
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 8,
            ),
            // Widget untuk menampilkan artikel terkait
            onlyForYouWidget(
              listArticle,
              deviceWidth,
              article.title,
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk menampilkan judul artikel
class Title extends StatelessWidget {
  final Article article;
  const Title({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      article.title,
      style: const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// Widget untuk menampilkan gambar artikel
class ArticleImage extends StatefulWidget {
  final Article article;

  const ArticleImage({
    super.key,
    required this.deviceWidth,
    required this.article,
  });

  final double deviceWidth;

  @override
  State<ArticleImage> createState() => _ArticleImageState();
}

class _ArticleImageState extends State<ArticleImage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.deviceWidth / 1.25,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.article.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Tombol kembali dan favorit di atas gambar
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: widget.deviceWidth * 0.02,
              vertical: widget.deviceWidth * 0.11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Tombol kembali
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              // Tombol favorit
              IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite
                      ? const Color.fromARGB(255, 232, 101, 75)
                      : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Widget untuk menampilkan informasi penulis
class CopyWriter extends StatelessWidget {
  final Article article;

  const CopyWriter({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Widget untuk menampilkan foto profil penulis
          CopyWriterProfile(
            article: article,
          ),
          // Widget untuk menampilkan jumlah views dan favorit
          ViewsAndFavorites(
            article: article,
          )
        ],
      ),
    );
  }
}

// Widget untuk menampilkan foto profil penulis
class CopyWriterProfile extends StatelessWidget {
  final Article article;

  const CopyWriterProfile({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Widget untuk menampilkan foto profil penulis
        CopyWriterProfilePicture(
          article: article,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nama penulis
              Text(
                article.copywriter,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Waktu penulisan
              Text(
                getTimeDifferenceFromNow(article.dateTime),
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Widget untuk menampilkan jumlah views dan favorit
class ViewsAndFavorites extends StatelessWidget {
  final Article article;

  const ViewsAndFavorites({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon dan jumlah views
        Row(
          children: [
            const Icon(
              Icons.remove_red_eye,
              color: Color.fromARGB(255, 54, 82, 176),
              size: 17,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              article.viewAmount.toString(),
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 54, 82, 176),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 7,
        ),
        // Icon dan jumlah favorit
        Row(
          children: [
            const Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 54, 82, 176),
              size: 17,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              article.likesAmount.toString(),
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 54, 82, 176),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Widget untuk menampilkan foto profil penulis
class CopyWriterProfilePicture extends StatelessWidget {
  final Article article;

  const CopyWriterProfilePicture({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        image: DecorationImage(
          image: AssetImage(article.copywriterPicture),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Widget untuk menampilkan konten artikel
class ArticleContent extends StatelessWidget {
  final Article article;

  const ArticleContent({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    // Membangun widget untuk setiap paragraf dalam artikel
    return Column(
      children: article.paragraphs
          .map(
            (paragraph) => ParagraphWidget(
              subTitle: paragraph.subTitle,
              text: paragraph.text,
            ),
          )
          .toList(),
    );
  }
}

// Widget untuk menampilkan setiap paragraf dalam artikel
class ParagraphWidget extends StatelessWidget {
  final String? subTitle;
  final String text;
  const ParagraphWidget({
    super.key,
    this.subTitle,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Menampilkan sub judul jika ada
        subTitle == null
            ? const SizedBox()
            : Text(
                subTitle!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.35,
                ),
              ),
        // Menampilkan teks paragraf
        Text(
          text,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            height: 1.35,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

// Widget untuk menampilkan kartu artikel terkait
Widget onlyForYouCard(Article article, deviceWidth) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: deviceWidth / 50),
    child: Row(
      children: [
        // Gambar artikel
        Container(
          width: deviceWidth / 4,
          height: deviceWidth / 4,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(article.imageUrl), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        SizedBox(
          width: deviceWidth / 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul artikel
            SizedBox(
              width: deviceWidth / 1.8,
              child: Text(
                article.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: deviceWidth / 27,
                ),
              ),
            ),
            SizedBox(
              height: deviceWidth / 20,
            ),
            // Informasi waktu dan jumlah favorit
            SizedBox(
              width: deviceWidth / 1.7,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Waktu penulisan artikel
                  Row(
                    children: [
                      Text(
                        getTimeDifferenceFromNow(article.dateTime),
                        style: TextStyle(
                          color: GlobalColor.blueGrey,
                          fontSize: deviceWidth / 35,
                        ),
                      ),
                      Text(
                        ' • ',
                        style: TextStyle(
                          color: GlobalColor.blueGrey,
                          fontSize: deviceWidth / 35,
                        ),
                      ),
                      // Icon mata untuk views
                      Icon(
                        Icons.remove_red_eye,
                        size: deviceWidth / 30,
                        color: GlobalColor.blueGrey,
                      ),
                      Text(
                        ' ${article.viewAmount.toString()}',
                        style: TextStyle(
                          color: GlobalColor.blueGrey,
                          fontSize: deviceWidth / 35,
                        ),
                      ),
                      // Jumlah favorit
                      Text(
                        ' • ',
                        style: TextStyle(
                          color: GlobalColor.blueGrey,
                          fontSize: deviceWidth / 35,
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        size: deviceWidth / 30,
                        color: GlobalColor.red,
                      ),
                      Text(
                        ' ${article.likesAmount.toString()} Disukai',
                        style: TextStyle(
                          color: GlobalColor.blueGrey,
                          fontSize: deviceWidth / 35,
                        ),
                      ),
                    ],
                  ),
                  // Tombol panah ke depan
                  Container(
                    padding: EdgeInsets.all(deviceWidth / 50),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: GlobalColor.yellow),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: deviceWidth / 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}

// Widget untuk menampilkan daftar artikel terkait
Widget onlyForYouWidget(
    List<Article> listArticle, deviceWidth, String currentArticleTitle) {
  // Jika daftar artikel kosong, tampilkan indikator loading
  if (listArticle.isEmpty) {
    return Center(child: CircularProgressIndicator());
  }
  // Filter artikel terkait
  List<Article> listRecommendedArticle = listArticle
      .where((article) => article.title != currentArticleTitle)
      .toList();
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: deviceWidth / 20, vertical: deviceWidth / 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Judul seksi artikel terkait
        Text(
          'Rekomendasi Untukmu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: deviceWidth / 20,
          ),
        ),
        // Daftar artikel terkait
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: listRecommendedArticle.length,
            itemBuilder: (context, index) {
              final Article recommendedArticle = listRecommendedArticle[index];

              return Column(
                children: [
                  // Kartu artikel terkait
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ArticleDetail(article: recommendedArticle);
                          },
                        ),
                      );
                    },
                    child: onlyForYouCard(
                      recommendedArticle,
                      deviceWidth,
                    ),
                  ),
                  // Garis pemisah antar artikel
                  (index + 1) >= listRecommendedArticle.length
                      ? const SizedBox()
                      : const Divider(
                          thickness: 1,
                        ),
                ],
              );
            })
      ],
    ),
  );
}

// Fungsi untuk menghitung selisih waktu dari sekarang
String getTimeDifferenceFromNow(DateTime dateTime) {
  DateTime dateTimeNow = DateTime.now();
  if (dateTime.year < dateTimeNow.year) {
    return "${dateTimeNow.year - dateTime.year} tahun yang lalu";
  }
  if (dateTime.month < dateTimeNow.month) {
    return "${dateTimeNow.month - dateTime.month} bulan yang lalu";
  }
  if (dateTime.weekday < dateTimeNow.weekday) {
    return "${dateTimeNow.weekday - dateTime.weekday} minggu yang lalu";
  }
  if (dateTime.day < dateTimeNow.day) {
    return "${dateTimeNow.day - dateTime.day} hari yang lalu";
  }
  return "Hari ini pukul ${dateTime.hour}:${dateTime.minute}";
}
