import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ServicioScreen(),
    );
  }
}

class Servicio {
  final int id;
  final String tipo;
  final double costo;
  final String material;
  final String fechaInicio;
  final String fechaFinalizado;
  final String resolucion;

  Servicio({
    required this.id,
    required this.tipo,
    required this.costo,
    required this.material,
    required this.fechaInicio,
    required this.fechaFinalizado,
    required this.resolucion,
  });
}

class ServicioScreen extends StatelessWidget {
  final List<Servicio> servicios = [
    Servicio(
        id: 1,
        tipo: "Electricidad",
        costo: 150.0,
        material: "Cableado",
        fechaInicio: "01/03/2025",
        fechaFinalizado: "05/03/2025",
        resolucion: "Reparación completa"),
    Servicio(
        id: 2,
        tipo: "Fontanería",
        costo: 120.0,
        material: "Tuberías PVC",
        fechaInicio: "10/03/2025",
        fechaFinalizado: "12/03/2025",
        resolucion: "Cambio de tuberías"),
    Servicio(
        id: 3,
        tipo: "Carpintería",
        costo: 200.0,
        material: "Madera de roble",
        fechaInicio: "15/03/2025",
        fechaFinalizado: "18/03/2025",
        resolucion: "Fabricación de muebles"),
    Servicio(
        id: 4,
        tipo: "Pintura",
        costo: 90.0,
        material: "Pintura acrílica",
        fechaInicio: "20/03/2025",
        fechaFinalizado: "22/03/2025",
        resolucion: "Paredes renovadas"),
    Servicio(
        id: 5,
        tipo: "Jardinería",
        costo: 80.0,
        material: "Fertilizante y semillas",
        fechaInicio: "25/03/2025",
        fechaFinalizado: "27/03/2025",
        resolucion: "Nuevo césped plantado"),
  ];

  final List<Color> colors = [
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.orange.shade100,
    Colors.red.shade100,
    Colors.purple.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        title: const Text('Emilio Renteria 22308051281093 '),
          titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: servicios.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: colors[index],
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        spreadRadius: 2,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("ID: ${servicios[index].id}", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Tipo: ${servicios[index].tipo}"),
                      Text("Costo: \$${servicios[index].costo}"),
                      Text("Material: ${servicios[index].material}"),
                      Text("Inicio: ${servicios[index].fechaInicio}"),
                      Text("Finalizado: ${servicios[index].fechaFinalizado}"),
                      Text("Resolución: ${servicios[index].resolucion}"),
                    ],
                  ),
                ),
                SizedBox(height: 16), // Separador entre containers
              ],
            );
          },
        ),
      ),
    );
  }
}