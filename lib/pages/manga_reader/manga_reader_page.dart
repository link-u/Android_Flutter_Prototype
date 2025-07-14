import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../providers/providers.dart';
import 'widgets/manga_page_widget.dart';
import 'widgets/manga_reader_controls.dart';

class MangaReaderPage extends ConsumerStatefulWidget {
  const MangaReaderPage({super.key});

  @override
  ConsumerState<MangaReaderPage> createState() => _MangaReaderPageState();
}

class _MangaReaderPageState extends ConsumerState<MangaReaderPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    
    // 初期化時にサンプルページを設定
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final notifier = ref.read(mangaReaderNotifierProvider.notifier);
      notifier.setPages([
        'Page 1',
        'Page 2',
        'Page 3',
        'Page 4',
        'Page 5',
      ]);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final readerState = ref.watch(mangaReaderNotifierProvider);
    final notifier = ref.read(mangaReaderNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: readerState.isControlsVisible
          ? AppBar(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              title: const Text('漫画ビューワー'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () => _showSettings(context),
                ),
              ],
            )
          : null,
      body: readerState.pages.isEmpty
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Stack(
              children: [
                // メインの漫画ページ
                GestureDetector(
                  onTap: () => notifier.toggleControlsVisibility(),
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: readerState.pages.length,
                    onPageChanged: (index) {
                      notifier.goToPage(index);
                    },
                    itemBuilder: (context, index) {
                      return MangaPageWidget(
                        pageContent: readerState.pages[index],
                        scale: readerState.scale,
                      );
                    },
                  ),
                ),
                // コントロール
                if (readerState.isControlsVisible)
                  MangaReaderControls(
                    currentPage: readerState.currentPage,
                    totalPages: readerState.pages.length,
                    onPreviousPage: () {
                      notifier.previousPage();
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    onNextPage: () {
                      notifier.nextPage();
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
              ],
            ),
    );
  }

  void _showSettings(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('設定'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.brightness_6),
              title: const Text('明るさ調整'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('明るさ調整機能は未実装です')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.zoom_in),
              title: const Text('表示設定'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('表示設定機能は未実装です')),
                );
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('閉じる'),
          ),
        ],
      ),
    );
  }
} 