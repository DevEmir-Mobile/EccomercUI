import 'package:flutter/material.dart';
import 'package:eccomerceui/pages/mycart.dart'; // Asegúrate de tener este archivo.

class RedmiNote4 extends StatelessWidget {
  const RedmiNote4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: const [
            ViewProduct(),
            Stars(),
            SizedBox(height: 19),
            DescriptionProduct(),
            Expanded(child: ListOfNumbersCategories()),
            AddToCartPag(),
          ],
        ),
      ),
    );
  }
}

class AddToCartPag extends StatelessWidget {
  const AddToCartPag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Mycart()),
        );
      },
      child: SafeArea(
        child: Container(
          width: 343,
          height: 51,
          decoration: ShapeDecoration(
            color: const Color(0xFFF16A26),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Center(
            child: Text(
              'Add to cart',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class ListOfNumbersCategories extends StatelessWidget {
  const ListOfNumbersCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      alignment: Alignment.topCenter,
      maxHeight: double.infinity,
      child: Transform.translate(
        offset: const Offset(0, -80),
        child: Padding(
          padding: const EdgeInsets.all(37),
          child: SizedBox(
            height: 32,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 6, // Del 35 al 40
              separatorBuilder: (_, __) => const SizedBox(width: 25),
              itemBuilder: (context, index) {
                final number = 35 + index;
                final isSelected = (number == 37);
                return Container(
                  width: 44,
                  height: 43,
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFFFFE0D6) : Colors.white,
                    border: Border.all(
                      color: const Color(0xFFEEEEEE),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      number.toString(),
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 14,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.translate(
          offset: const Offset(0, -60),
          child: Padding(
            padding: const EdgeInsets.only(right: 340),
            child: const Text(
              '\$45,000',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(-105, -80),
          child: const SizedBox(
            width: 51.28,
            child: Text(
              '\$55,000',
              style: TextStyle(
                color: Color(0xFFAFAFAF),
                fontSize: 11.48,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(-5, -60),
          child: Padding(
            padding: const EdgeInsets.only(right: 340, top: 30),
            child: const Text(
              'About',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(125, -145),
          child: const Text(
            'Available in stock',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(-15, -70),
          child: const SizedBox(
            width: 367,
            child: Text(
              'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
              style: TextStyle(
                color: Color.fromARGB(255, 51, 50, 50),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Stars extends StatelessWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.translate(
          offset: const Offset(-45, -60),
          child: Padding(
            padding: const EdgeInsets.only(right: 210),
            child: const Text(
              'Redmi Note 4',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const SizedBox(height: 19),
        Transform.translate(
          offset: const Offset(-10, -70),
          child: Padding(
            padding: const EdgeInsets.only(right: 300),
            child: SizedBox(
              width: 107,
              height: 20,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFCBF0C),
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 21,
                    top: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFCBF0C),
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 43,
                    top: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFCBF0C),
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 65,
                    top: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFCBF0C),
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 87,
                    top: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFCBF0C),
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ViewProduct extends StatelessWidget {
  const ViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Contenedor grande al fondo
        Container(
          width: 476,
          height: 506.85,
          decoration: const ShapeDecoration(
            color: Color(0xFFF1F1F1),
            shape: OvalBorder(),
          ),
          child: Container(
            width: 500,
            height: 510,
            decoration: const ShapeDecoration(
              color: Color(0xFFF1F1F1),
              shape: OvalBorder(),
            ),
            child: Image.asset(
              'assets/images/image2.png',
              fit: BoxFit.values[1],
            ),
          ),
        ),

        // Círculo anaranjado
        Padding(
          padding: const EdgeInsets.only(top: 480),
          child: Center(
            child: Container(
              width: 12,
              height: 12,
              decoration: const ShapeDecoration(
                color: Color(0x7FF16A26),
                shape: OvalBorder(),
              ),
            ),
          ),
        ),

        // Círculo blanco izquierdo
        Padding(
          padding: const EdgeInsets.only(top: 480, left: 40),
          child: Center(
            child: Container(
              width: 12,
              height: 12,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
              ),
            ),
          ),
        ),

        // Círculo blanco derecho
        Padding(
          padding: const EdgeInsets.only(top: 480, right: 40),
          child: Center(
            child: Container(
              width: 12,
              height: 12,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
              ),
            ),
          ),
        ),

        // Sección de selección de color (el stack interno)
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 410, left: 300),
              child: Center(
                child: Container(
                  width: 57.90,
                  height: 163,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF1F1F1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.91),
                        bottomRight: Radius.circular(8.91),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 470, left: 300),
              child: Center(
                child: Container(
                  width: 28.79,
                  height: 28.79,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF2C3247),
                    shape: OvalBorder(),
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500, left: 300),
              child: Center(
                child: Container(
                  width: 28.79,
                  height: 28.79,
                  decoration: const ShapeDecoration(
                    color: Colors.black,
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 540, left: 300),
              child: Center(
                child: Container(
                  width: 28.79,
                  height: 28.79,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
