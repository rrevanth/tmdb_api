part of tmdb_api;

class Networks {
  final V3 _v3;
  final String _endPoint = 'network';
  Networks(this._v3) : assert(_v3 != null);

  ///Get the details of a network.
  ///
  ///## Parameters
  ///- `networkId`: network id for a given network.
  ///Should not pass a null value
  ///
  ///## Usage
  ///```
  ///Map result = await tmdb.v3.networks.getDetails(213);
  ///```
  ///
  ///For doc visit
  ///[Offical Docmentation](https://developers.themoviedb.org/3/networks/get-network-details)
  Future<Map> getDetails(int networkId) {
    if (networkId == null) {
      throw NullValueException('networkId==null is true',
          source: 'Networks.getDetails($networkId)',
          help: 'try pass a non null value');
    }

    return _v3._query('$_endPoint/$networkId');
  }

  /// Get the alternative names of a network.
  ///
  ///## Parameters
  ///- `networkId`: network id for a given network.
  ///Should not pass a null value
  ///
  ///## Usage
  ///```
  ///Map result = await tmdb.v3networks.getAlternativeNames(213);
  ///```
  Future<Map> getAlternativeNames(int networkId) {
    if (networkId == null) {
      throw NullValueException('networkId==null is true',
          source: 'Networks.getAlternativeNames($networkId)',
          help: 'try pass a non null value');
    }

    return _v3._query('$_endPoint/$networkId/alternative_names');
  }

  ///Get the TV network logos by id.
  ///
  ///## Parameters
  ///- `networkId`: network id for a given network.
  ///Should not pass a null value
  ///
  ///## Usage
  ///```
  ///Map result = await tmdb.v3networks.getImages(213);
  ///```
  Future<Map> getImages(int networkId) {
    if (networkId == null) {
      throw NullValueException('networkId==null is true',
          source: 'Networks.getImages($networkId)',
          help: 'try pass a non null value');
    }

    return _v3._query('$_endPoint/$networkId/images');
  }
}
