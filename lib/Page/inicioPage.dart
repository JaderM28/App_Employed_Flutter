import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const NetworkImage(
            'https://media.istockphoto.com/id/692999494/es/foto/peluquer%C3%ADa-corte-algunos-consejos-para-el-cabello.jpg?s=612x612&w=0&k=20&c=ZQK8JtvxpivNsTYmJnJfDh-52wgwIiGkBiPHDtIQQXA='
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.dstATop)
        ),
        
      ),
      
      child: const Center(child: Text("Bienvenido A BelcomSpa", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
    );
  }
}
