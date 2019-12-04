import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LandingPage extends Page<LandingState, Map<String, dynamic>> {
  LandingPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<LandingState>(
                adapter: null,
                slots: <String, Dependent<LandingState>>{
                }),
            middleware: <Middleware<LandingState>>[
            ],);

}
