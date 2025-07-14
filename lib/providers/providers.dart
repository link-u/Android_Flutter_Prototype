import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../pages/manga_reader/notifier/manga_reader_notifier.dart';
import '../pages/manga_reader/state/manga_reader_state.dart';

// 漫画リーダーの状態管理
final mangaReaderNotifierProvider = StateNotifierProvider<MangaReaderNotifier, MangaReaderState>(
  (ref) => MangaReaderNotifier(),
);

// 現在のページ情報を取得するProvider
final currentPageProvider = Provider<int>((ref) {
  final state = ref.watch(mangaReaderNotifierProvider);
  return state.currentPage;
});

// 現在表示中のページデータを取得するProvider
final currentPageDataProvider = Provider<String?>((ref) {
  final state = ref.watch(mangaReaderNotifierProvider);
  
  if (state.pages.isEmpty || state.currentPage >= state.pages.length) {
    return null;
  }
  
  return state.pages[state.currentPage];
}); 