import 'package:flutter/material.dart';
import 'package:flutter_application_1/agenda.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/disposisi_keluar.dart';
import 'package:flutter_application_1/disposisi_masuk.dart';
import 'package:flutter_application_1/draft_surat.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/pdfdispmasuk.dart';
import 'package:flutter_application_1/pdfview.dart';
import 'package:flutter_application_1/pdfviewsuratmasuk.dart';
import 'package:flutter_application_1/pengesahan.dart';
import 'package:flutter_application_1/permohonan_paraf.dart';
import 'package:flutter_application_1/profil.dart';
import 'package:flutter_application_1/recheck.dart';
import 'package:flutter_application_1/surat_keluar.dart';
import 'package:flutter_application_1/surat_masuk.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments; 

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/about':
        return MaterialPageRoute(builder: (_) => dashboard());
      case '/help':
        return MaterialPageRoute(builder: (_) => help());
      case '/pengesahan':
        return MaterialPageRoute(builder: (_) => Pengesahan());
      case '/profil':
        return MaterialPageRoute(builder: (_) => profil());
      case '/paraf':
        return MaterialPageRoute(builder: (_) => Paraf());
      case '/recheck':
        return MaterialPageRoute(builder: (_) => recheck());
      case '/suratMasuk':
        return MaterialPageRoute(builder: (_) => suratMasuk());
      case '/suratKeluar':
        return MaterialPageRoute(builder: (_) => suratKeluar());
      case '/recheck':
        return MaterialPageRoute(builder: (_) => recheck());  
      case '/draftSurat':
        return MaterialPageRoute(builder: (_) => draftSurat());  
      case '/disposisiMasuk':
        return MaterialPageRoute(builder: (_) => disposisiMasuk());  
      case '/disposisiKeluar':
        return MaterialPageRoute(builder: (_) => disposisiKeluar());  
      case '/agenda':
        return MaterialPageRoute(builder: (_) => agenda());
      case '/pdfView':
        return MaterialPageRoute(builder: (_) => pdfView());  
      case '/pdfDispMasuk':
        return MaterialPageRoute(builder: (_) => pdfDispMasuk());  
      case '/pdfViewSuratMasuk':
        return MaterialPageRoute(builder: (_) => pdfViewSuratMasuk());  
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}