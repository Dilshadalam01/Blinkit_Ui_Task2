import 'package:flutter/material.dart';
import 'Widgets/custom_grid_item.dart';

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
                  colors: [
                    Colors.yellow.shade700,
                    Colors.yellow.shade300,
                    Colors.grey.shade200,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'BlinkIt in',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  //9 minutes row
                  Row(
                    children: [
                      const Text(
                        "9 minutes",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(width: 135),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(10),
                              shape: const CircleBorder(),
                              minimumSize: const Size(15, 15),
                            ),
                            child: const Icon(
                              Icons.wallet_giftcard,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          Positioned(
                            left: 3,
                            top: 32,
                            child: Container(
                              height: 20,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 3,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Colors.black,
                                    size: 12,
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          shape: const CircleBorder(),
                          minimumSize: const Size(15, 15),
                        ),
                        child: const Icon(
                          Icons.person,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  //Home
                  Row(
                    children: const [
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
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 13,
                    ),
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.search_outlined, size: 35),
                        SizedBox(width: 5),
                        Text(
                          'Search "sugar"',
                          style: TextStyle(fontSize: 22, color: Colors.grey),
                        ),
                        SizedBox(width: 147),
                        Text(
                          '|',
                          style: TextStyle(color: Colors.grey, fontSize: 30),
                        ),
                        SizedBox(width: 13),
                        Icon(Icons.mic_sharp, size: 32),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //card Header
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 13),
                      child: const Row(
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

                    //Gridview count container
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      shrinkWrap: true,
                      childAspectRatio: 0.9,
                      children: [
                        CustomGridItem(
                          image1: 'https://imgs.search.brave.com/RSLujQfWvC3faPgLPkwz3aH3JwCGNYj8id1Hs3Z0BBg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/b2NvbnV0LXN0aWxs/LWxpZmVfMjMtMjE1/MTUyNjg4MC5qcGc_/c2VtdD1haXNfaHli/cmlkJnc9NzQwJnE9/ODA',
                          image2:
                          'https://imgs.search.brave.com/Luy6JbAw5gxfm7DGYVVeitMdzksBmUR3XNxQP_we_-I/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMy/ODIyMDcwNS92ZWN0/b3IvbWlsay1wb3Vy/aW5nLWZyb20tY2Fy/dG9uLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz16SDVUVDZU/aFFHcUpwMGVfZG44/TGM5a2dvZzI5Y3ll/a2tVcy1lc2g5bjlv/PQ',
                          title: 'Favourites',
                          moreText: '+7 more',
                        ),
                        CustomGridItem(
                            image1: 'https://imgs.search.brave.com/pAVfVjeK5eyz7mA6-8299LYb4Op3YUXlDCztswFzrYk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9iaWdv/ZmZlcnMuY28uaW4v/d3AtY29udGVudC91/cGxvYWRzLzIwMjIv/MDQvQW11bC1Hb2xk/LU1pbGstNTAwbWwu/anBn',
                            image2: 'https://imgs.search.brave.com/Evbty3uqU26VMr6PTxtRHnf3hWCR40cCunHsZEhJbjA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/aGVyaXRhZ2Vmb29k/cy5pbi9zdGF0aWMv/aW1hZ2VzL2RldGFp/bHNsaWRlci9tZWdh/L3Byb2Jpb3RpY2N1/cmQuanBn',
                            title: 'Milk, Curd & Paneer',
                            moreText: '+10 more',
                        ),
                        CustomGridItem(
                          image1: 'https://imgs.search.brave.com/uvFg7Zpjdh1rbsgcQKlQK8-1gb0Hv7tcanm1hMLajOw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1L2Iz/LzZjLzk1YjM2Y2Rj/YTc5OTc5YjU1ZTMy/YzRmZjhlYWNlMDYz/LmpwZw',
                          image2: 'https://imgs.search.brave.com/8ZYG9tEWc72QLDvtsskWK2UXKTln4JbuCxhiyBNA1uI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/ZGVzaWduZXJwZW9w/bGUuY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDIzLzAyL05h/bWtlZW4tcGFja2Fn/aW5nLTEucG5n',
                          title: 'Chips & NamKeen',
                          moreText: '+1 more',
                        ),
                        CustomGridItem(
                            image1: 'https://imgs.search.brave.com/egWYKmSnS90abKSqBpfzUcqPbIi9SyPtBXHjmEPwGs4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/c2hvcGlmeS5jb20v/cy9maWxlcy8xLzAy/MDEvMTc3MS83MDky/L2ZpbGVzL2hvbmV5/LXNwaWNlZC1sYXZl/bmRlci1oYW5kLWFu/ZC1ib2R5LWNvbGxl/Y3Rpb24tZmxhdGxh/eS1saWZlc3R5bGUt/bG93LXJlcy5qcGc_/dj0xNjgzOTA4MDA3',
                            image2: 'https://imgs.search.brave.com/z9FieVyD8YYjl2AmxXKZIZgKVeD2oXK_BHgXEISUZvM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9ob21l/ZXNzZW50aWFscy5p/bi9jZG4vc2hvcC9m/aWxlcy8xNzE5OTk2/Mjg1MTQzLTY5ZWUz/YTljNWNmMDRiZjU4/MTczOTJjZTJmNTg4/MjAzLWdvb2RzLTMw/MjQwM18yOTh4Mjk4/X2Nyb3BfY2VudGVy/LndlYnA_dj0xNzIx/NDg3NzAz',
                            title: 'Home Essential', 
                            moreText: '+15 more'
                        ),
                        CustomGridItem(
                          image1: 'https://imgs.search.brave.com/LxJbU3GvfI6TaIcq1v3cpYUOyJ1m4rNwEScSLTPU5ic/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTcy/NjM5MzM2L3Bob3Rv/L3ZlZ2V0YWJsZXMu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PW9meXp4d0R3cUNO/VVJkMkpJcTVBVktK/ekJvQk9ScnpNUVpK/VmFoS09PNGs9',
                          image2: 'https://imgs.search.brave.com/O9l77ttBD343zohbzl0Vq1wni3zLEJAzE7qT6E53EpA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9h/aS1nZW5lcmF0ZWQt/aW1hZ2UtYmFuYW5h/XzIzLTIxNTA2ODMw/NTIuanBnP3NlbXQ9/YWlzX2luY29taW5n/Jnc9NzQwJnE9ODA',
                          title: 'Vegetables & Fruit',
                          moreText: '+2 more'
                        ),
                        CustomGridItem(
                            image1: 'https://imgs.search.brave.com/_7S4a2vbI5cdS1DxgUJXd5u1nUs4OZds5P9FxSLCqGU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9wYW1w/ZXJzLWRpYXBlcnMt/c3VwZXJtYXJrZXQt/c2hlbGYtbm93eS1z/YWN6LXBvbGFuZC1h/cHJpbC1kaWZmZXJl/bnQtdHlwZXMtYWN0/aXZlLWJhYnktZHJ5/LXByb2N0ZXItZ2Ft/YmxlLWNvLW9mZmVy/ZWQtOTE0MDMzNjYu/anBn',
                            image2: 'https://imgs.search.brave.com/tTvmuW2tbiYoqiXcg87GFyZ5oOC7zn3AUdExT_vVYek/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tb3Ro/ZXJzcGFyc2guY29t/L2Nkbi9zaG9wL2Zp/bGVzL21vdGhlci1z/cGFyc2gtbmF0dXJh/bC1jYXJlLWJhYnkt/c29hcC1ib3gtMV81/ZjNiYjQxOC1mNjEz/LTQ0NzktOTkxMS04/ZmEyNmI1MGE0ZjUu/d2VicD92PTE3NjAx/NjQ0NjMmd2lkdGg9/NTMz',
                            title: 'Baby Care',
                        ),
                      ],
                    ),

                    //2nd Title More that you ordered
                    Container(
                      padding: const EdgeInsets.only(left: 13),
                      child: const Row(
                        children: [
                          Text(
                            "More that you ordered",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // another GridView
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      shrinkWrap: true,
                      // ✅ added: fixes layout overflow
                      childAspectRatio: 0.9,
                      children: [
                        CustomGridItem(
                          image1: 'https://imgs.search.brave.com/RSLujQfWvC3faPgLPkwz3aH3JwCGNYj8id1Hs3Z0BBg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/b2NvbnV0LXN0aWxs/LWxpZmVfMjMtMjE1/MTUyNjg4MC5qcGc_/c2VtdD1haXNfaHli/cmlkJnc9NzQwJnE9/ODA',
                          image2: 'https://imgs.search.brave.com/uvFg7Zpjdh1rbsgcQKlQK8-1gb0Hv7tcanm1hMLajOw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1L2Iz/LzZjLzk1YjM2Y2Rj/YTc5OTc5YjU1ZTMy/YzRmZjhlYWNlMDYz/LmpwZw',
                          title: 'Vegetable',
                          moreText: '+1 more',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
