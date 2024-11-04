import 'package:flutter/material.dart';

import '../../fonts.dart';

class PicturesCarousel extends StatefulWidget {
  final List<String> imageUrls;

  const PicturesCarousel({super.key, required this.imageUrls});

  @override
  _PicturesCarouselState createState() => _PicturesCarouselState();
}

class _PicturesCarouselState extends State<PicturesCarousel> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 300,
          child: widget.imageUrls.isEmpty
              ? Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                      child: Text(
                    'Нет изображений',
                    style: style4,
                  )))
              : PageView.builder(
                  controller: _pageController,
                  itemCount: widget.imageUrls.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.network(
                          widget.imageUrls[index],
                          fit: BoxFit.cover,
                          errorBuilder: (BuildContext context, Object error,
                              StackTrace? stackTrace) {
                            return Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(
                                    child: Text(
                                  'Не удалось загрузить изображение',
                                  style: style4,
                                )));
                          },
                        ),
                      ),
                    );
                  },
                ),
        ),
        Positioned(
          bottom: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.imageUrls.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Colors.grey[600]
                        : Colors.grey[300],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
