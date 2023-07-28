import 'package:flutter/material.dart';
import 'package:flutter_application_1/agenda/agenda.dart';
import 'package:flutter_application_1/dashboard/dashboard.dart';
import 'package:flutter_application_1/disposisi/disposisi_keluar.dart';
import 'package:flutter_application_1/disposisi/disposisi_masuk.dart';
import 'package:flutter_application_1/surat keluar/draft_surat.dart';
import 'package:flutter_application_1/surat keluar/form_draft_surat.dart';
import 'package:flutter_application_1/help/help.dart';
import 'package:flutter_application_1/main/login.dart';
import 'package:flutter_application_1/disposisi/pdfdispmasuk.dart';
import 'package:flutter_application_1/permohonan paraf/pdfview.dart';
import 'package:flutter_application_1/surat masuk/pdfviewsuratmasuk.dart';
import 'package:flutter_application_1/pengesahan/pengesahan.dart';
import 'package:flutter_application_1/permohonan paraf/permohonan_paraf.dart';
import 'package:flutter_application_1/profile/profil.dart';
import 'package:flutter_application_1/pengesahan/recheck.dart';
import 'package:flutter_application_1/surat keluar/surat_keluar.dart';
import 'package:flutter_application_1/surat masuk/surat_masuk.dart';
import 'package:flutter_application_1/pengesahan/pdfViewpengesahan.dart';
import 'package:flutter_application_1/pengesahan/pdfViewrecheck.dart';
import 'package:flutter_application_1/surat masuk/surat_manual.dart';
import 'package:flutter_application_1/surat keluar/pdfview_suratkeluar.dart';
import 'package:flutter_application_1/disposisi/pdfview_disp_keluar.dart';

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
      case '/formDraftSurat':
        return MaterialPageRoute(builder: (_) => formDraftSurat());  
      case '/pdfViewpengesahan':
        return MaterialPageRoute(builder: (_) => pdfViewpengesahan());
      case '/pdfViewrecheck':
        return MaterialPageRoute(builder: (_) => pdfViewrecheck());
      case '/suratManual':
        return MaterialPageRoute(builder: (_) => suratManual());
      case '/pdfview_suratkeluar':
        return MaterialPageRoute(builder: (_) => pdfview_suratkeluar());
      case '/pdfview_dispkeluar':
        return MaterialPageRoute(builder: (_) => pdfView_dispkeluar());
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