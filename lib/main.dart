import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 15),
              height: screenHeight * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.yellow.shade700, Colors.yellow.shade300, Colors.grey.shade200],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'BlinkIt in',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  //9 minutes
                  Row(
                    children: [
                      Text(
                        "9 minutes",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(width: 190),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(10),
                          shape: CircleBorder(),
                          minimumSize: Size(15, 15),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  //Home
                  Row(
                    children: [
                      Text(
                        'HOME - ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'House no.1029',
                        style: TextStyle(fontSize: 20, color: Colors.black45),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                        size: 30,
                      ),
                    ],
                  ),

                  // Search Container
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 13),
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Icon(
                            Icons.search_outlined,
                            size: 35,
                        ),
                        SizedBox(width: 5),
                        Text(
                            'Search "sugar"',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.grey,

                          ),
                        ),
                        SizedBox(width: 147),
                        Text('|',
                          style: TextStyle(
                                color: Colors.grey,
                                fontSize: 30,
                          ),
                        ),
                        SizedBox(width: 13),
                        Icon(
                          Icons.mic_sharp,
                          size: 32,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 20, left: 18),
              child: Row(
                children: [
                  Text(
                    "Frequently bought",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                  ),
                ],
              ),
            ),

                Container(
                  width: 160,
                  height: 150,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE7F2F2), // light blue background
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://imgs.search.brave.com/MWuhjbzo0pHpFpr3MhJ_OlbgsBH2vpnQR0l6VH1mIKo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/emVwdG9ub3cuY29t/L3Byb2R1Y3Rpb24v/aWstc2VvL3RyOnct/NjQwLGFyLTEyMDAt/MTIwMCxwci10cnVl/LGYtYXV0byxxLTgw/L2Ntcy9wcm9kdWN0/X3ZhcmlhbnQvYjNj/NmQ1MDEtYjI1Ny00/OTk0LThlYzgtMDJh/ODU1NzQ0ZTg0L0xh/eS1zLUNsYXNzaWMt/U2FsdGVkLVBvdGF0/by1DaGlwcy1QYWNr/ZXQtQ29tYm8uanBn', // Replace with your image
                              height: 70,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://imgs.search.brave.com/MWuhjbzo0pHpFpr3MhJ_OlbgsBH2vpnQR0l6VH1mIKo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/emVwdG9ub3cuY29t/L3Byb2R1Y3Rpb24v/aWstc2VvL3RyOnct/NjQwLGFyLTEyMDAt/MTIwMCxwci10cnVl/LGYtYXV0byxxLTgw/L2Ntcy9wcm9kdWN0/X3ZhcmlhbnQvYjNj/NmQ1MDEtYjI1Ny00/OTk0LThlYzgtMDJh/ODU1NzQ0ZTg0L0xh/eS1zLUNsYXNzaWMt/U2FsdGVkLVBvdGF0/by1DaGlwcy1QYWNr/ZXQtQ29tYm8uanBn',
                              height: 70,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '+7 more',
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Favourites',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}


// Text(
// '|',
// style: TextStyle(
//
// ),
// ),
// Icon(
// Icons.mic
// )