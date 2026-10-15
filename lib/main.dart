import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Data Siswa XI PPLG 2'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Table(
              border: TableBorder.all(),
              defaultColumnWidth: const IntrinsicColumnWidth(),
              children: [
                TableRow(
                  decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                  ),
                  children: [
                    cell('No', bold: true),
                    cell('Nama', bold: true),
                    cell('Kelas', bold: true),
                    cell('Link GitHub', bold: true),
                    cell('Link APK', bold: true),
                  ],
                ),
                TableRow(children: [
                  cell('1'),
                  cell('Sheza Adelia Afdhianty'),
                  cell('XI PPLG 2'),
                  link(
                    'GitHub Sheza',
                    'https://github.com/szanasihuy/stateless_bromo',
                  ),
                  link(
                    'APK Sheza',
                    'https://drive.google.com/file/d/1FK75IdPEPHtN6eRzKk4AsxrNLmdybYHn/view',
                  ),
                ]),
                TableRow(children: [
                  cell('2'),
                  cell('Dini Afrilia'),
                  cell('XI PPLG 2'),
                  link(
                    'GitHub Dini',
                    'https://github.com/dini-boop/tugas-W1SATA',
                  ),
                  link(
                    'APK Dini',
                    'https://drive.google.com/file/d/1jwg8ufxGK7_23pqQZnF3AVIIaEJGNR3e/view',
                  ),
                ]),
                TableRow(children: [
                  cell('3'),
                  cell('Insanin Kamilia'),
                  cell('XI PPLG 2'),
                  link(
                    'GitHub Insanin',
                    'https://github.com/Insanin52010/sumber_umbulan',
                  ),
                  link(
                    'APK Insanin',
                    'https://classroom.google.com/c/ODkwNDY5ODA5Mzc5/a/ODkwNTYxNDE1ODQw/details',
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget cell(String text, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  static Widget link(String text, String url) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () async {
          final Uri uri = Uri.parse(url);
          await launchUrl(
            uri,
            mode: LaunchMode.externalApplication,
          );
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
