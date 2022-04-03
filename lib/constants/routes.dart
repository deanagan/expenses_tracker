enum routeIndices { home, summary, add }

class Routes {
  static const home = '/';
  static const summary = '/summary';
  static const add = '/add';

  static final Map<int, String> routeMap = {
    routeIndices.home.index: home,
    routeIndices.summary.index: summary,
    routeIndices.add.index: add
  };
}
