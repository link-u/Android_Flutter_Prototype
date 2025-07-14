import 'package:flutter/material.dart';

class MangaReaderControls extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final VoidCallback onPreviousPage;
  final VoidCallback onNextPage;

  const MangaReaderControls({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPreviousPage,
    required this.onNextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: currentPage > 0 ? onPreviousPage : null,
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              iconSize: 32,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                '${currentPage + 1} / $totalPages',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              onPressed: currentPage < totalPages - 1 ? onNextPage : null,
              icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              iconSize: 32,
            ),
          ],
        ),
      ),
    );
  }
} 