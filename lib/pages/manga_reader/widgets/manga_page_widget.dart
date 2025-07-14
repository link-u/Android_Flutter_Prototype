import 'package:flutter/material.dart';

class MangaPageWidget extends StatelessWidget {
  final String pageContent;
  final double scale;

  const MangaPageWidget({
    super.key,
    required this.pageContent,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: const EdgeInsets.all(0),
          minScale: 0.5,
          maxScale: 3.0,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double width = constraints.maxWidth * 0.9;
              final double height = constraints.maxHeight * 0.8;
              
              return Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    pageContent,
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
} 