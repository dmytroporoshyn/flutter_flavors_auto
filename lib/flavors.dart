enum Flavor {
  prod,
  staging,
  dev,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Prod';
      case Flavor.staging:
        return 'Staging';
      case Flavor.dev:
        return 'Dev';
      default:
        return 'title';
    }
  }

}
