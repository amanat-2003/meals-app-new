import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedPageNotifier extends StateNotifier<int> {
  SelectedPageNotifier() : super(0);

  void changePage(int n) {
    state = n;
  }
}

final selectedPageProvider = StateNotifierProvider<SelectedPageNotifier, int>(
  (ref) => SelectedPageNotifier(),
);
