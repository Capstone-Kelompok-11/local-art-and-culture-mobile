import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/color.dart'; // Mengimpor definisi warna kustom
import 'package:local_art_and_culture/src/feature/article/model/article.dart'; // Mengimpor model artikel
import 'package:local_art_and_culture/src/feature/article/ui/article_detail.dart'; // Mengimpor halaman detail artikel
// article_list.dart = halaman depan sebelum detail artikel diklik
// Kelas untuk menampilkan daftar artikel
class ArticleList extends StatefulWidget {
  const ArticleList({super.key});

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  late List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    _loadArticles();
  }

  // Fungsi untuk memuat daftar artikel dari sumber data
  Future<void> _loadArticles() async {
    try {
      articles = await fetchArticle();
    } catch (error) {
      print('Error fetching articles: $error');
    }

    if (mounted) {
      setState(() {});
    }
  }

  // Fungsi untuk menghitung perbedaan waktu dari sekarang
  String getTimeDifferenceFromNow(DateTime dateTime) {
    DateTime dateTimeNow = DateTime.now();
    if (dateTime.year < dateTimeNow.year) {
      return "${dateTimeNow.year - dateTime.year} Tahun lalu";
    }
    if (dateTime.month < dateTimeNow.month) {
      return "${dateTimeNow.month - dateTime.month} Bulan Lalu";
    }
    if (dateTime.weekday < dateTimeNow.weekday) {
      return "${dateTimeNow.weekday - dateTime.weekday} Minggu Lalu";
    }
    if (dateTime.day < dateTimeNow.day) {
      return "${dateTimeNow.day - dateTime.day} Hari Lalu";
    }
    if (dateTime.hour < dateTimeNow.hour) {
      return "${dateTimeNow.hour - dateTime.hour} Jam Lalu";
    }
    return "${dateTime.hour}:${dateTime.minute}";
  }

  @override
  Widget build(BuildContext context) {
    if (articles.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        primary: true,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: deviceWidth / 5,
        titleSpacing: 2,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: titleAppBar(deviceWidth),
        actions: [actionsAppBar(deviceWidth)],
      ),
      body: ListView(
        children: [
          titlePage(deviceWidth),
          newsCarouselWidget(deviceWidth),
          onlyForYouWidget(deviceWidth),
        ],
      ),
    );
  }

  // Fungsi untuk membangun widget judul pada AppBar
  Widget titleAppBar(deviceWidth) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.5),
        borderRadius: BorderRadius.all(Radius.circular(deviceWidth / 10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            spreadRadius: .2,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            size: deviceWidth / 15,
            color: Colors.grey.withOpacity(0.5),
          ),
          hintText: 'Cari Artikel',
          hintStyle: TextStyle(
              fontSize: deviceWidth / 23, color: GlobalColor.lightGrey),
          contentPadding: EdgeInsets.symmetric(horizontal: deviceWidth / 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(deviceWidth / 10)),
            borderSide: const BorderSide(color: Colors.white, width: 0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(deviceWidth / 10)),
            borderSide: const BorderSide(color: Colors.white, width: 0),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun widget aksi pada AppBar
  Widget actionsAppBar(deviceWidth) {
    return Padding(
      padding: EdgeInsets.fromLTRB(deviceWidth / 25, deviceWidth / 25,
          deviceWidth / 25, deviceWidth / 25),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth / 40),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: GlobalColor.yellow,
        ),
        child: Center(
          child: Icon(
            Icons.filter_list,
            size: deviceWidth / 15,
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun widget judul halaman
  Widget titlePage(deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: deviceWidth / 17, vertical: deviceWidth / 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Artikel',
            style: TextStyle(
              fontSize: deviceWidth / 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: deviceWidth / 50,
          ),
          Text(
            'Eksplor Artikel untuk Perkaya Pengetahuan Budayamu!',
            style: TextStyle(
              color: GlobalColor.grey,
              fontSize: deviceWidth / 29,
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membangun widget kartu terkini pada carousel
  Widget newscarouselCard(Article article, deviceWidth) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return ArticleDetail(article: article);
          }),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(article.imageUrl), fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Color.fromARGB(193, 6, 19, 60)]),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                deviceWidth / 15,
                0,
                deviceWidth / 15,
                deviceWidth / 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: deviceWidth / 1.7,
                    child: Text(
                      article.title,
                      style: TextStyle(
                        fontSize: deviceWidth / 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviceWidth / 99,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(article.copywriterPicture),
                        radius: 8,
                      ),
                      SizedBox(
                        width: deviceWidth / 40,
                      ),
                      Text(
                        article.copywriter,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: deviceWidth / 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membangun widget carousel artikel terkini
  Widget newsCarouselWidget(deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: deviceWidth / 20, vertical: deviceWidth / 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Terkini',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: deviceWidth / 20,
            ),
          ),
          SizedBox(
            height: deviceWidth / 20,
          ),
          CarouselSlider(
            items: articles
                .map((article) => newscarouselCard(article, deviceWidth))
                .toList(),
            options: CarouselOptions(
              viewportFraction: .9,
              padEnds: false,
              enableInfiniteScroll: false,
              height: deviceWidth / 2,
              disableCenter: true,
            ),
          )
        ],
      ),
    );
  }

  // Fungsi untuk membangun widget kartu "Hanya Untukmu"
  Widget onlyForYouCard(Article article, deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: deviceWidth / 50),
      child: Row(
        children: [
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
              SizedBox(
                width: deviceWidth / 1.7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                        Icon(
                          Icons.favorite,
                          size: deviceWidth / 30,
                          color: GlobalColor.red,
                        ),
                        Text(
                          ' ${article.likesAmount.toString()}',
                          style: TextStyle(
                            color: GlobalColor.blueGrey,
                            fontSize: deviceWidth / 35,
                          ),
                        ),
                        Text(
                          ' Disukai',
                          style: TextStyle(
                            color: GlobalColor.blueGrey,
                            fontSize: deviceWidth / 35,
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(deviceWidth / 50),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: GlobalColor.yellow),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: deviceWidth / 30,
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  // Fungsi untuk membangun widget daftar "Hanya Untukmu"
  Widget onlyForYouWidget(deviceWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: deviceWidth / 20, vertical: deviceWidth / 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hanya Untukmu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: deviceWidth / 20,
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final Article article = articles[index];

                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ArticleDetail(article: article);
                            },
                          ),
                        );
                      },
                      child: onlyForYouCard(
                        article,
                        deviceWidth,
                      ),
                    ),
                    (index + 1) >= articles.length
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
}
