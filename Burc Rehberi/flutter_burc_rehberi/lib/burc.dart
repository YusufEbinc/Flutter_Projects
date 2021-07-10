class Burc {
  String _burcAdi;
  String _burTarihi;
  String _burcDetayi;
  String _burcKucukResim;
  String _burcBuyukResim;

  
 String get burcAdi => this._burcAdi;

 set burcAdi(String value) => this._burcAdi = value;

  get burTarihi => this._burTarihi;

 set burTarihi( value) => this._burTarihi = value;

  get burcDetayi => this._burcDetayi;

 set burcDetayi( value) => this._burcDetayi = value;

  get burcKucukResim => this._burcKucukResim;

 set burcKucukResim( value) => this._burcKucukResim = value;

  get burcBuyukResim => this._burcBuyukResim;

 set burcBuyukResim( value) => this._burcBuyukResim = value;

  Burc(this._burcAdi, this._burTarihi, this._burcDetayi, this._burcKucukResim,
      this._burcBuyukResim);

  @override
  String toString() {
    return '$_burcAdi-$_burcBuyukResim';
  }

  
}
