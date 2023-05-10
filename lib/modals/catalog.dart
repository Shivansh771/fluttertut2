class CatalogModel{

  static final items=[
    Item(
        id: 12,
        name:"Iphone",
        desc: "Apple iPhone 12 pro max",
        price: 888,
        color: "#11221",
        image: "https://www.apple.com/newsroom/images/product/iphone/standard/Apple_announce-iphone12pro_10132020_big.jpg.large.jpg"
    )
  ];
}




class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}