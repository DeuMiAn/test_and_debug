import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_and_debug/models/favorites.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  static String routeName = 'favorites_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('제일 좋아'),
      ),
      body: Consumer<Favorites>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) =>
              FavoriteItemTile(itemNo: value.items[index]),
        ),
      ),
    );
  }
}

class FavoriteItemTile extends StatelessWidget {
  const FavoriteItemTile({super.key, required this.itemNo});

  final int itemNo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
        ),
        title: Text(
          'item $itemNo',
          key: Key('favorites_text_$itemNo'),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Provider.of<Favorites>(context, listen: false).remove(itemNo);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Removed from favorites. '),
              duration: Duration(seconds: 1),
            ));
          },
        ),
      ),
    );
  }
}
