import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_status/model/shopping_item_model.dart';
import 'package:flutter_status/riverpod/state_notifier_provider.dart';

final filteredShoppingListProvider = Provider<List<ShoppingItemModel>>(
  (ref) {
    final filterState = ref.watch(filterProvider);
    final shoppingListState = ref.watch(shoppingListProvider);

    if (filterState == FilterStatus.all) {
      return shoppingListState;
    }

    return shoppingListState
        .where((element) => filterState == FilterStatus.spicy
            ? element.isSpicy
            : !element.isSpicy)
        .toList();
  },
);

enum FilterStatus {
  notSpicy,
  spicy,
  all,
}

final filterProvider = StateProvider<FilterStatus>((ref) => FilterStatus.all);
