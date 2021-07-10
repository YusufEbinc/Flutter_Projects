import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcAciklama extends StatefulWidget {
  final Burc secilenBurc;
  const BurcAciklama({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  _BurcAciklamaState createState() => _BurcAciklamaState();
}

class _BurcAciklamaState extends State<BurcAciklama> {
  Color appbarRengi = Colors.transparent;
 late PaletteGenerator _generator;

  @override
  void initState() { 
    super.initState();
    apparRenginibul();
      }
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          primary: true,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 250,
                pinned: true,
                backgroundColor: appbarRengi,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/' + widget.secilenBurc.burcBuyukResim,
                    fit: BoxFit.cover,
                  ),
                  title: Text(widget.secilenBurc.burcAdi + ' Burcu ve Özellikleri'),
                  centerTitle: true,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    child: Text(
                      widget.secilenBurc.burcDetayi,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
    
      void apparRenginibul() async
      {
        _generator =await PaletteGenerator.fromImageProvider(AssetImage('assets/images/${widget.secilenBurc.burcBuyukResim}'));
      
          setState(() {
            
          });
          
         
              appbarRengi=_generator.vibrantColor!.color;
          
      }
}
