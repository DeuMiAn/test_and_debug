import 'package:flutter/material.dart';

//flutter 공식에서 어떻게 구현하는지 알려주는 모델
class Favorites extends ChangeNotifier {
  //아이템리스트를 변수로 받음
  final List<int> _favoriteItems = [];

  //get으로 조회만 가능하게 하는듯함
  List<int> get items => _favoriteItems;
  //이렇게 add할수 있는 메소드도 주는듯함 모델에 다 하게 해주는듯?
  void add(int itemNo) {
    _favoriteItems.add(itemNo);
    notifyListeners();
  }

  //오.. 제거도 할 수 있게 remove도 줌
  void remove(int itemNo) {
    _favoriteItems.remove(itemNo);
    notifyListeners();
  }
}
