import 'package:flutter/material.dart';
import 'package:mdev1005_flutter_assign3/screens/welcome_screen.dart';
import '../routes/routes.dart';
import '../widgets/custom_scaffold.dart';

class PopulationApiScreen extends StatefulWidget {

  @override
  State<PopulationApiScreen> createState() => _PopulationApiScreenState();
}

class _PopulationApiScreenState extends State<PopulationApiScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 0,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'USA Population',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF416FDF),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.7,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 10,
                          ),
                          child: Text(
                            'Fetching data from datausa.io API',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.7,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
