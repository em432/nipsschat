import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super( key: key );

  @override
  _AboutScreenState createState() => _AboutScreenState( );
}

class _AboutScreenState extends State<AboutScreen> {
  String _selectedOption = 'mission';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'About NIPSS' ),
      ),
      body: Padding(
        padding: const EdgeInsets.all( 16.0 ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/nipsslogo1.jpg', height: 100 ),
              const SizedBox( height: 16.0 ),
              const Text(
                'National Institute for Policy and Strategic Studies',
                style: TextStyle( fontSize: 24.0, fontWeight: FontWeight.bold ),
                textAlign: TextAlign.center,
              ),

              const SizedBox( height: 16.0 ),
              const Text(
                'About NIPSS',
                style: TextStyle( fontSize: 22.0 ),
              ),
              const SizedBox( height: 16.0 ),
              const Text(
                'The fast pace of change and national development in countries across the world, especially over the past three decades, has been driven by paradigm transitions towards “thinking globally and acting locally”. Successful national growth and development have therefore been accomplished under inherently deft, visionary and people-oriented national policies and strategies.The Nigerian State had foreseen the need for qualitative input into the national policy making process by 1979, hence The National Institute for Policy and Strategic Studies (also called The National Institute or NIPSS) was established by Decree number 20 of 1979, now Cap N-51 Laws of the Federation of Nigeria, 2004. The Institute was conceived as a high-level institution with the primary objectives of serving as the nation’s foremost policy think-tank to develop a crop of top-class technocrats of high intellectual capacity, who will conceptualize and anchor the implementation of innovative and dynamic policy initiatives and strategies, critical for national development.The National institute serves as a high-level Centre for reflection, research and dialogue where, academics of excellence, seasoned policy initiators and executors and other citizens of mature experience and wisdom drawn from all walks of life, meet to reflect and exchange ideas on the great issues of society, particularly as they relate to Nigeria and Africa within the context of a constantly changing world..',
                textAlign: TextAlign.justify,
              ),
              const SizedBox( height: 16.0 ),
              const SizedBox( height: 16.0 ),
              SizedBox(
                height: 50.0, // Add a specific height to the SizedBox widget
                child: Container(
                  width: 100.0, // Add a specific width to the Container widget
                  decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular( 10.0 ),
                  ),
                  child: DropdownButton<String>(
                    value: _selectedOption,
                    style: const TextStyle( color: Colors.white ),
                    dropdownColor: Colors.green[900],
                    underline: Container( ),
                    icon: const Icon( Icons.arrow_drop_down ),
                    items: const [
                      DropdownMenuItem(
                        value: 'mission',
                        child: Center(
                            child: Text( 'Mission',
                                style: TextStyle( fontSize: 18.0 ) ) ),
                      ),
                      DropdownMenuItem(
                        value: 'vision',
                        child: Center(
                            child:
                            Text(
                                'Vision', style: TextStyle( fontSize: 18.0 ) ) ),
                      ),
                      DropdownMenuItem(
                        value: 'motto',
                        child: Center(
                            child:
                            Text( 'Motto', style: TextStyle( fontSize: 18.0 ) ) ),
                      ),
                    ],
                    onChanged: (value) {
                      setState( () {
                        _selectedOption = value!;
                      } );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 16.0 ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[900]!,
                  borderRadius: BorderRadius.circular( 10.0 ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all( 8.0 ),
                  child: Text(
                    _selectedOption == 'mission'
                        ? 'The mission of the National Institute is “to serve as the Centre for policy, Advocacy, Advice and Training for Nigeria, West Africa and Africa in the context of a dynamic and changing world”.'
                        : _selectedOption == 'vision'
                        ? 'Its vision is “To be the Apex Centre for policy, research and reflection for a better Nigeria and human society”.'
                        : 'The motto of the Institute is “Towards a better society”.',
                    style: const TextStyle( color: Colors.white ),
                  ),
                ),
              ),
            ],
          ),
        ),)
      ,
    );
  }
}