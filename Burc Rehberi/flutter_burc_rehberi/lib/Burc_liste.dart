import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/Burc_Detay.dart';
import 'package:flutter_burc_rehberi/burc.dart';
import 'package:flutter_burc_rehberi/utils/strings.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = verikaynaginihazirla();
   
  }
  @override
  Widget build(BuildContext context) {
    tumBurclar = verikaynaginihazirla();

    return Scaffold(
        appBar: AppBar(
          title: Text('BURÇ LİSTESİ'),
        ),
        body: Center(
          child: ListView.builder(itemBuilder: (context, index) {
            return BurcDetay(oaneklenenburc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,
          ),
        ));
  }

  List<Burc> verikaynaginihazirla() {
    List<Burc> burclar = [];

    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${1 + i}.png';
      var buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';

      Burc eklenecekburc =
          Burc(burcAdi, burcTarihi, burcDetay, kucukResim, buyukResim);
      burclar.add(eklenecekburc);
    }
    return burclar;
  }
}
