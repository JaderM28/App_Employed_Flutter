
import 'package:flutter/material.dart';

class NosotrosPage extends StatelessWidget {
const NosotrosPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text("Sobre Nosotros", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),),
              ),    
              Image.network(
                'https://www.flowww.es/hubfs/Q3_Campa%C3%B1as%20Septiembre_2018/Septiembre%20Q3%202018/BLOG_ES/5-iideas-para-decorar-tu-barberia-flowww.png',
                  height: 300,
                  width: 300,
              ),
              
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
                    'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
                    ', quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo' 
                    'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
                    'cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat'
                    'non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
                  , textAlign: TextAlign.center,),
                )
            ],
          ),
        ],
      ),
    );
  }
}