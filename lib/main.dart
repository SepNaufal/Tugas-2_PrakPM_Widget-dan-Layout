import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF18C8FD)),
        useMaterial3: true,
        fontFamily: 'sans-serif',
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF0FAFE),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF18C8FD),
          foregroundColor: Colors.white,
          leading: const Icon(Icons.home_rounded, size: 28),
          title: const Text(
            'Aplikasi Burung',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 0.5,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search_rounded),
              onPressed: () {},
            ),
          ],
        ),

        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Header "Artikel Baru" ──────────────────────────────
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF18C8FD).withOpacity(0.12),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.auto_awesome_rounded,
                      color: Color(0xFF009FC2),
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Artikel Baru',
                      style: TextStyle(
                        color: Color(0xFF007A96),
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              // ── Card Artikel ──────────────────────────────────────
              Card(
                elevation: 4,
                shadowColor: const Color(0xFF18C8FD).withOpacity(0.25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
                          width: double.infinity,
                          height: 210,
                          fit: BoxFit.cover,
                        ),
                        // gradient overlay di bawah gambar
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.55),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                        ),
                        // badge kategori
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF18C8FD),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              '🐦 Langka',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sosok Burung Puyuh Biru Langka yang Unik dan Menarik',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D2D3A),
                              height: 1.4,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_today_rounded,
                                size: 13,
                                color: Color(0xFF90A4AE),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                '21 Mei 2026',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF90A4AE),
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.favorite_border_rounded,
                                size: 18,
                                color: Colors.pink.shade300,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '124',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.pink.shade300,
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Icon(
                                Icons.share_rounded,
                                size: 18,
                                color: Color(0xFF90A4AE),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ── Judul Komentar ────────────────────────────────────
              Row(
                children: const [
                  Icon(
                    Icons.chat_bubble_rounded,
                    color: Color(0xFF18C8FD),
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Komentar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D2D3A),
                      letterSpacing: 0.3,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // ── Daftar Komentar ───────────────────────────────────
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildKomentar(
                    nama: 'Sep Naufal_2306078',
                    isi:
                        'Senang sekali bisa melihat burung puyuh biru yang unik ini!',
                    avatarColor: const Color(0xFF18C8FD),
                    inisial: 'SN',
                  ),
                  _buildKomentar(
                    nama: 'Dita Rahayu_29999',
                    isi: 'Foto dan artikelnya sangat informatif, terima kasih!',
                    avatarColor: const Color(0xFF26C6DA),
                    inisial: 'DR',
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // ── Input Komentar ────────────────────────────────────
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF18C8FD).withOpacity(0.15),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xFF18C8FD),
                      child: Text(
                        'A',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        'Tulis komentar...',
                        style: TextStyle(
                          color: Color(0xFFB0BEC5),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Color(0xFF18C8FD),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.send_rounded,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Helper: membuat card komentar
  Widget _buildKomentar({
    required String nama,
    required String isi,
    required Color avatarColor,
    required String inisial,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: avatarColor,
            child: Text(
              inisial,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                    color: Color(0xFF0D2D3A),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  isi,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF546E7A),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.thumb_up_alt_outlined,
            size: 16,
            color: Color(0xFFB0BEC5),
          ),
        ],
      ),
    );
  }
}
