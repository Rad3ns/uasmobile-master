import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: RichText(
            text: TextSpan(
                text: "Selamat Datang,",
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text: " User",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ]),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(
                  right: 20,
                ),
                width: 23,
                height: 23,
                child: Image.asset(
                  "assets/icons/qrcode.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
          backgroundColor: Color(0xFF52307C),
          elevation: 0,
        ),
        body: Stack(
          children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                height: 250,
                width: Get.width,
                color: Color(0xFF52307C),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Column(
                    children: [
                      ClipPath(
                        clipper: ClipInfoClass(),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF4d0099),
                                Color(0xFF462969),
                              ],
                            ),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("0895367512345",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Saldo Anda",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Rp25.000",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Isi Saldo",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFF7B731),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  color: Colors.white54,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: "Berlaku untuk pembayaran",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: " Online",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ]),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Baleni POIN",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF7B731),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Text(
                                        "250",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            StatusCard(
                              title: "Lokasi",
                              data: "Jkt",
                              satuan: " ID",
                            ),
                            StatusCard(
                              title: "Tujuan",
                              data: "Bwx",
                              satuan: " ID",
                            ),
                            StatusCard(
                              title: "Jarak",
                              data: "1.58",
                              satuan: " Mil",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      )
                    ],
                  ),
                  Container(height: 10, color: Colors.grey[300]),
                  Expanded(
                    child: Container(
                      height: 100,
                      // color: Colors.purple,
                      child: Column(
                        children: [
                          //body
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Kategori",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ItemKategori(
                                      title: "Lokasi",
                                      icon: "assets/icons/lokasi.png",
                                    ),
                                    ItemKategori(
                                      title: "Bayar",
                                      icon: "assets/icons/pembayaran.png",
                                    ),
                                    ItemKategori(
                                      title: "Poin",
                                      icon: "assets/icons/poin.png",
                                    ),
                                    ItemKategori(
                                      title: "Ulasan",
                                      icon: "assets/icons/rating.png",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ItemKategori(
                                      title: "Pesan",
                                      icon: "assets/icons/pesan.png",
                                    ),
                                    ItemKategori(
                                      title: "Pengaturan",
                                      icon: "assets/icons/pengaturan.png",
                                    ),
                                    ItemKategori(
                                      title: "Notifikasi",
                                      icon: "assets/icons/notif.png",
                                    ),
                                    ItemKategori(
                                      title: "Tracking",
                                      icon: "assets/icons/truk.png",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Terbaru dari Baleni",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Selengkapnya>>",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF4D0099),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ItemTerbaru(
                                        image: "assets/images/images-1.png",
                                      ),
                                      ItemTerbaru(
                                        image: "assets/images/images-2.png",
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          //navigation
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(color: Colors.grey),
                              ),
                            ),
                            // color: Colors.amber,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ItemNav(
                                  icon: "home",
                                  status: true,
                                  title: "Beranda",
                                ),
                                ItemNav(
                                  icon: "history",
                                  status: false,
                                  title: "Riwayat",
                                ),
                                ItemNav(
                                  icon: "help",
                                  status: false,
                                  title: "Bantuan",
                                ),
                                ItemNav(
                                  icon: "mail",
                                  status: false,
                                  title: "Pesan",
                                ),
                                ItemNav(
                                  icon: "profile",
                                  status: false,
                                  title: "Akun",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ItemTerbaru extends StatelessWidget {
  ItemTerbaru({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: Get.width * 0.7,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 45,
          height: 45,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            child: Image.asset(
              (status == true)
                  ? "assets/icons/$icon-active.png"
                  : "assets/icons/$icon.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              color: (status == true) ? Color(0xFF4d0099) : Color(0xFF747D8C),
            ),
          ),
        ],
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  StatusCard({
    required this.title,
    required this.data,
    required this.satuan,
    Key? key,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF52307C),
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: "$satuan",
                      style: TextStyle(fontSize: 15, color: Color(0xFF747D8C))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 62, size.height);
    path.lineTo(size.width, size.height - 62);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 90);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 90,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
