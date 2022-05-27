import 'package:flutter/material.dart';

class FilterSearchScreen extends StatefulWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  State<FilterSearchScreen> createState() => _FilterSearchScreenState();
}

class _FilterSearchScreenState extends State<FilterSearchScreen> {
  var check = 0;
  var checkMale = false;
  var checkFemale = false;
  var checkAction = false;
  var checkDrama = false;
  var checkComedy = false;
  var checkRomantic = false;
  bool isMale = true;
  double age = 4.0;
  double height = 60.0;
  double weight = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Filter',
          style: TextStyle(
            color: Color(0xFF51D5E8),
            fontSize: 27,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 15.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(color: Color(0xFF1D1C6A)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                      const BorderSide(color: Color(0x1D1C6Aff))),
                  hintText: 'Search',
                  hintStyle:
                  const TextStyle(color: Colors.black26, fontSize: 16),
                  border: const OutlineInputBorder(),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF51D5E8),
                    size: 36,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Gender',
                style: TextStyle(
                  fontSize: 25.0,
                    color: Colors.grey
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Color(0xFF1D1C6A),
                          value: checkMale,
                          onChanged: (value) {
                            setState(() {
                              checkMale = value!;
                              print('male');
                            });
                          }),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF79CDE0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 30.0,
                        width: 100,
                        child: MaterialButton(
                          onPressed: () {
                            print('Male');
                          },
                          child: const Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Color(0xFF1D1C6A),
                          value: checkFemale,
                          onChanged: (value) {
                            setState(() {
                              checkFemale = value!;
                              print('female');
                            });
                          }),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF79CDE0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 30.0,
                        width: 100,
                        child: MaterialButton(
                          onPressed: () {
                            print('Female');
                          },
                          child: const Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Type',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Color(0xFF1D1C6A),
                              value: checkAction,
                              onChanged: (value) {
                                setState(() {
                                  checkAction = value!;
                                  print('Action');
                                });
                              }),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF79CDE0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            width: 120.0,
                            height: 30.0,
                            child: MaterialButton(
                              onPressed: () {
                                print('Type Action');
                              },
                              child: const Text(
                                'Action',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Color(0xFF1D1C6A),
                              value: checkRomantic,
                              onChanged: (value) {
                                setState(() {
                                  checkRomantic = value!;
                                  print('romantic');
                                });
                              }),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF79CDE0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            height: 30.0,
                            width: 120,
                            child: MaterialButton(
                              onPressed: () {
                                print('Type Romantic');
                              },
                              child: const Text(
                                'Romantic',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Color(0xFF1D1C6A),
                              value: checkDrama,
                              onChanged: (value) {
                                setState(() {
                                  checkDrama = value!;
                                  print('drama');
                                });
                              }),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF79CDE0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            height: 30.0,
                            width: 120,
                            child: MaterialButton(
                              onPressed: () {
                                print('Type Drama');
                              },
                              child: const Text(
                                'Drama',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Color(0xFF1D1C6A),
                              value: checkComedy,
                              onChanged: (value) {
                                setState(() {
                                  checkComedy = value!;
                                  print('comedy');
                                });
                              }),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF79CDE0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            height: 30.0,
                            width: 120,
                            child: MaterialButton(
                              onPressed: () {
                                print('Type Comedy');
                              },
                              child: const Text(
                                'Comedy',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Age= ${age.round()}',
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Slider(
                activeColor: Color(0xFF79CDE0),
                value: age,
                min: 10.0,
                max: 100.0,
                onChanged: (value) {
                  setState(() {
                    age = value;
                    print('${age.round()}');
                  });
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Height= ${height.round()}',
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Slider(
                activeColor: Color(0xFF79CDE0),
                value: height,
                min: 50,
                max: 200,
                onChanged: (value) {
                  setState(() {
                    height = value;
                    print('${height.round()}');
                  });
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Weight = ${weight.round()}',
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Slider(
                activeColor: Color(0xFF79CDE0),
                value: weight,
                min: 0,
                max: 150,
                onChanged: (value) {
                  setState(() {
                    weight = value;
                    print('${weight.round()}');
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
