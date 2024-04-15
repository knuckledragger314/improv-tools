abstract class GameFilters {
  static Map<String, String> getGameFilters() {
    var gameFilters = {
      'Two Person Game': 'Two Person',
      'Three Person Game': 'Three Person',
      'Four Person Game': 'Four Person',
      'Line Game': 'Line',
      'Performance Game': 'Performance',
      'Emcee Needed': 'Emcee',
      'No Emcee Needed': 'No Emcee'
    };
    return gameFilters;
  }
}
