import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late List<Marker> _mark;
  late List<Data> _data;

  @override
  void initState() {
    _data = <Data>[
      Data(53.35014, -6.24529, 15),
      Data(51.903614, -8.468399, 13),
      Data(52.668018, -8.630498, 13),
      Data(53.270962, -9.062691, 13)
    ];

    _mark = <Marker>[
      Marker(
        width: 25.0,
        height: 25.0,
        point: LatLng(_data[0].lat, _data[0].lng),
        builder: (ctx) => Container(
          child: FlutterLogo(),
        ),
      ),
      Marker(
        width: 20.0,
        height: 20.0,
        point: LatLng(_data[1].lat, _data[1].lng),
        builder: (ctx) => Container(
          child: FlutterLogo(),
        ),
      ),
      Marker(
        width: 20.0,
        height: 20.0,
        point: LatLng(_data[3].lat, _data[3].lng),
        builder: (ctx) => Container(
          child: FlutterLogo(),
        ),
      ),
      Marker(
        width: 30.0,
        height: 30.0,
        point: LatLng(_data[2].lat, _data[2].lng),
        builder: (ctx) => Container(
          child: FlutterLogo(),
        ),
      ),
    ];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oulspot Map'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(_data[0].lat, _data[0].lng),
          zoom: 7,
        ),
        layers: [
          TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
          MarkerLayerOptions(markers: _mark),
        ],
      ),
    );
  }
}

class Data {
  final double lat;

  final double lng;

  final double zoom;

  const Data(this.lat, this.lng, this.zoom);
}
