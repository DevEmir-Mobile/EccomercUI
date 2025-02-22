import 'package:flutter/material.dart';

class Mycart extends StatelessWidget {
  const Mycart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Text(
              'My cart',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Expanded(child: ListOfProducts()),
            PriceBottomsTheProduct()
           
          ],
        )),
      ),
    );
  }
}

class PriceBottomsTheProduct extends StatelessWidget {
  const PriceBottomsTheProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Transform.translate(
      offset: Offset(0, -35),
      child: Padding(
        padding: const EdgeInsets.only(right: 350),
        child: Text(
          'Total',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
    Transform.translate(
      offset: Offset(170, -60),
      child: Text(
        '\$180,000',
        style: TextStyle(
          color: Color(0xFFF16A26),
          fontSize: 16.25,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    Transform.translate(
      offset: Offset(0, -20),
      child: Container(
        width: 347,
        height: 51,
        decoration: ShapeDecoration(
          color: Color(0xFFF16A26),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      child: Center(child: Text('Add to Cart',style: TextStyle(color: Colors.white))),
      ),
    )
      ],
    );
  }
}

class ListOfProducts extends StatelessWidget {
  const ListOfProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 366,
                      height: 125,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF8F8F8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 100,
                        height: 90,
                        decoration: ShapeDecoration(
                          color: Color(0x3FB0AB7A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/image1.png',
                          fit: BoxFit.values[1],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120, top: 20),
                      child: SizedBox(
                        width: 115,
                        height: 18,
                        child: SizedBox(
                          width: 115,
                          height: 18,
                          child: Text(
                            'Apple W-series 6',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120, top: 45),
                      child: SizedBox(
                        width: 46,
                        height: 16,
                        child: SizedBox(
                          width: 46,
                          height: 16,
                          child: Text(
                            '\$45,000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.23,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 300, top: 22),
                      child: SizedBox(
                        width: 46,
                        height: 16,
                        child: SizedBox(
                          width: 46,
                          height: 16,
                          child: Text(
                            'Size: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.23,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 330, top: 22),
                      child: SizedBox(
                        width: 46,
                        height: 16,
                        child: SizedBox(
                          width: 46,
                          height: 16,
                          child: Text(
                            '35',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.23,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 290, top: 65),
                      child: Container(
                        width: 67,
                        height: 35.77,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 67,
                                height: 35.77,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0x7FF16A26)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 7,
                              top: 0.05,
                              child: SizedBox(
                                width: 8,
                                height: 34.71,
                                child: SizedBox(
                                  width: 8,
                                  height: 34.71,
                                  child: Text(
                                    '_',
                                    style: TextStyle(
                                      color: Color(0xFFF17547),
                                      fontSize: 16.14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 29,
                              top: 8.47,
                              child: SizedBox(
                                width: 7,
                                height: 16.83,
                                child: SizedBox(
                                  width: 7,
                                  height: 16.83,
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 49,
                              top: 5.36,
                              child: SizedBox(
                                width: 11,
                                height: 21.04,
                                child: SizedBox(
                                  width: 11,
                                  height: 21.04,
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Color(0xFFF17547),
                                      fontSize: 16.14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 366,
                    height: 125,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF8F8F8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 100,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Color(0x3FB0AB7A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/image2.png',
                        fit: BoxFit.values[1],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120, top: 20),
                    child: SizedBox(
                      width: 115,
                      height: 18,
                      child: SizedBox(
                        width: 115,
                        height: 18,
                        child: Text(
                          'Apple W-series 6',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120, top: 45),
                    child: SizedBox(
                      width: 46,
                      height: 16,
                      child: SizedBox(
                        width: 46,
                        height: 16,
                        child: Text(
                          '\$45,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.23,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300, top: 22),
                    child: SizedBox(
                      width: 46,
                      height: 16,
                      child: SizedBox(
                        width: 46,
                        height: 16,
                        child: Text(
                          'Size: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.23,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 330, top: 22),
                    child: SizedBox(
                      width: 46,
                      height: 16,
                      child: SizedBox(
                        width: 46,
                        height: 16,
                        child: Text(
                          '35',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.23,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 290, top: 65),
                    child: Container(
                      width: 67,
                      height: 35.77,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 67,
                              height: 35.77,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Color(0x7FF16A26)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 7,
                            top: 0.05,
                            child: SizedBox(
                              width: 8,
                              height: 34.71,
                              child: SizedBox(
                                width: 8,
                                height: 34.71,
                                child: Text(
                                  '_',
                                  style: TextStyle(
                                    color: Color(0xFFF17547),
                                    fontSize: 16.14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 29,
                            top: 8.47,
                            child: SizedBox(
                              width: 7,
                              height: 16.83,
                              child: SizedBox(
                                width: 7,
                                height: 16.83,
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 49,
                            top: 5.36,
                            child: SizedBox(
                              width: 11,
                              height: 21.04,
                              child: SizedBox(
                                width: 11,
                                height: 21.04,
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    color: Color(0xFFF17547),
                                    fontSize: 16.14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
