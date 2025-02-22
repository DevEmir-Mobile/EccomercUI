import 'package:eccomerceui/pages/apple_watch.dart';
import 'package:eccomerceui/pages/mycart.dart';
import 'package:eccomerceui/pages/redmi_note4.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.format_align_left),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextDesing(),
          const SizedBox(height: 20),
          ListCards(),
          TextCategories(),
          ListOfCategories(),
          // Se envuelve ProductCatalog en Expanded para asignarle altura:
          Expanded(child: ProductCatalog()),
          Expanded(child: TabBarPage()),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String imageAsset;
  final double price;

  Product({
    required this.name,
    required this.imageAsset,
    required this.price,
  });
}

class ProductCatalog extends StatelessWidget {
  const ProductCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        name: 'Apple Watch - series 6',
        imageAsset: 'assets/images/image1.png',
        price: 29.99,
      ),
      Product(
        name: 'Redmi Note 4',
        imageAsset: 'assets/images/image2.png',
        price: 19.99,
      ),
    ];

    // Se obtiene el ancho de la pantalla
    final screenWidth = MediaQuery.of(context).size.width;
    // Número de columnas y aspecto de la tarjeta según el ancho
    final int crossAxisCount = screenWidth < 600 ? 2 : 4;
    final double childAspectRatio = screenWidth < 600 ? 1.1 : 1.3;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: childAspectRatio,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (products[index].name == 'Apple Watch - series 6') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AppleWatch()),
                );
              } else if (products[index].name == 'Redmi Note 4') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RedmiNote4()),
                );
              }
            },
            child: Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFF8F8F8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Stack para superponer el banner "50% off" y el ícono de corazón
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          products[index].imageAsset,
                          width: double.infinity,
                          height: screenWidth < 600 ? 150 : 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                      // Banner "50% off"
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          width: 55,
                          height: 23.46,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.13),
                          ),
                          child: Text(
                            '50% OFF',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      // Ícono de corazón
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: screenWidth < 600 ? 16 : 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      products[index].name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Text(
                          '\$${products[index].price.toString()}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          '55,000',
                          style: TextStyle(
                            color: Color(0xFFAFAFAF),
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ListOfCategories extends StatelessWidget {
  const ListOfCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) => const CategoriesList(),
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: 1,
      ),
    );
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.watch,
      Icons.emoji_people,
      Icons.shopping_bag,
      Icons.sports_soccer,
      Icons.sports_esports
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        icons.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 64,
              height: 62.55,
              decoration: BoxDecoration(
                color: index == 0 ? const Color(0xFFF17547) : Colors.grey[300],
                borderRadius: BorderRadius.circular(7.27),
                border: Border.all(
                  width: 1.45,
                  color: const Color(0x7FD7D3D3),
                ),
              ),
              child: Icon(
                icons[index],
                color: index == 0 ? Colors.white : Colors.grey,
                size: 30,
              ),
            ),
          );
        },
      ),
    );
  }
}

class TextCategories extends StatelessWidget {
  const TextCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30, left: 20),
          child: Text(
            'Top Categories',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 190, top: 40),
          child: Text(
            'See All',
            style: TextStyle(
              color: const Color(0xFFF17547),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}

class ListCards extends StatelessWidget {
  const ListCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) => const ListsHorizontal(),
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: 1,
      ),
    );
  }
}

class TextDesing extends StatelessWidget {
  const TextDesing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Hello Fola ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                WidgetSpan(
                  child: Icon(
                    Icons.waving_hand,
                    color: Colors.orange,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 10.0),
          child: Text(
            'Let’s start shopping!',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}

class ListsHorizontal extends StatelessWidget {
  const ListsHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildOfferCard(
          color: const Color(0xFFF17547), // Naranja
          textColor: Colors.white,
          buttonColor: Colors.white,
          buttonTextColor: const Color(0xFFF17547),
        ),
        const SizedBox(width: 15), // Espaciado entre tarjetas
        _buildOfferCard(
          color: const Color(0xFF1383F1), // Azul
          textColor: Colors.white,
          buttonColor: Colors.white,
          buttonTextColor: const Color(0xFF1383F1),
        ),
      ],
    );
  }

  Widget _buildOfferCard({
    required Color color,
    required Color textColor,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return Stack(
      children: [
        Container(
          width: 285,
          height: 130,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '20% OFF DURING THE WEEKEND',
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 15,
          child: Container(
            width: 80,
            height: 34,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Center(
              child: Text(
                'Get Now',
                style: TextStyle(
                  color: buttonTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Creamos el controlador con 4 pestañas
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: TabBar(
        controller: _tabController,
        onTap: (index){
          switch (index){
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => Mycart()));
          }
        },
        tabs: const [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.favorite)),
          Tab(icon: Icon(Icons.shopping_cart, )),
          Tab(icon: Icon(Icons.person)),
        ],
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.orange,
        ),
      
      ),
    );
  }
}
