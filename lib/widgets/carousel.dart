import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> imageUrls;

  ImageCarousel({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
      items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}


// void main() => runApp(const MaterialApp(
//       home: MyApp2(),
//     ));

// class MyApp2 extends StatelessWidget {
//   const MyApp2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Image carousel'),
//         ),
//         body: const Carousel(),
//       ),
//     );
//   }
// }

// class Carousel extends StatefulWidget {
//   const Carousel({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<Carousel> createState() => _CarouselState();
// }

// class _CarouselState extends State<Carousel> {
//   late PageController _pageController;

//   List<String> images = [
//     "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
//     "https://wallpaperaccess.com/full/2637581.jpg",
//     "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
//   ];

//   int activePage = 1;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: MediaQuery.of(context).size.width,
//           height: 200,
//           child: PageView.builder(
//               itemCount: images.length,
//               pageSnapping: true,
//               controller: _pageController,
//               onPageChanged: (page) {
//                 setState(() {
//                   activePage = page;
//                 });
//               },
//               itemBuilder: (context, pagePosition) {
//                 bool active = pagePosition == activePage;
//                 return slider(images, pagePosition, active);
//               }),
//         ),
//         Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: indicators(images.length, activePage))
//       ],
//     );
//   }
// }

// AnimatedContainer slider(images, pagePosition, active) {
//   double margin = active ? 10 : 20;

//   return AnimatedContainer(
//     duration: const Duration(milliseconds: 500),
//     curve: Curves.easeInOutCubic,
//     margin: EdgeInsets.all(margin),
//     decoration: BoxDecoration(
//         image: DecorationImage(image: NetworkImage(images[pagePosition]))),
//   );
// }

// imageAnimation(PageController animation, images, pagePosition) {
//   return AnimatedBuilder(
//     animation: animation,
//     builder: (context, widget) {
//       print(pagePosition);

//       return SizedBox(
//         width: 200,
//         height: 200,
//         child: widget,
//       );
//     },
//     child: Container(
//       margin: const EdgeInsets.all(10),
//       child: Image.network(images[pagePosition]),
//     ),
//   );
// }

// List<Widget> indicators(imagesLength, currentIndex) {
//   return List<Widget>.generate(imagesLength, (index) {
//     return Container(
//       margin: const EdgeInsets.all(3),
//       width: 10,
//       height: 10,
//       decoration: BoxDecoration(
//           color: currentIndex == index ? Colors.black : Colors.black26,
//           shape: BoxShape.circle),
//     );
//   });
// }
