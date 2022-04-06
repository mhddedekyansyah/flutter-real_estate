class HouseModel {
  String name;
  String address;
  String urlImg;
  bool whislist;

  HouseModel(
      {this.name = '',
      this.urlImg = '',
      this.whislist = false,
      this.address = ''});

  static List<HouseModel> mockHouse() {
    return [
      HouseModel(
          name: 'American Classic',
          address: 'Highway District 201',
          urlImg: 'assets/images/img1.jpg',
          whislist: true),
      HouseModel(
        name: 'Minimalist House',
        address: 'Minimalist House',
        urlImg: 'assets/images/img2.jpg',
      ),
      HouseModel(
        name: 'Futuristic House',
        address: 'Pile Broadway 920',
        urlImg: 'assets/images/img3.jpg',
      ),
    ];
  }
}
