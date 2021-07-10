import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc.dart';
import 'package:flutter_burc_rehberi/burc_aciklama.dart';

class BurcDetay extends StatelessWidget {
  final Burc oaneklenenburc;

  const BurcDetay({required this.oaneklenenburc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextstyle = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      BurcAciklama(secilenBurc: oaneklenenburc)));
            },
            leading: Image.asset(
              'assets/images/' + oaneklenenburc.burcKucukResim,
            ),
            title: Text(oaneklenenburc.burcAdi, style: myTextstyle.headline5),
            subtitle:
                Text(oaneklenenburc.burTarihi, style: myTextstyle.subtitle1),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
