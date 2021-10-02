import 'package:flutter/widgets.dart';

import 'package:thinkpeople/core/enums/view_state.dart';

class BaseModel extends ChangeNotifier {
  ViewState _enumViewState = ViewState.idle;
  ViewState get state => _enumViewState;

  setViewState(ViewState viewState) {
    _enumViewState = viewState;
    notifyListeners();
  }
}
