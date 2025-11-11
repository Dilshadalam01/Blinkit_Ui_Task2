import 'package:blinkit_ui/screens/product/product_widgets/product_category_list.dart';
import 'package:blinkit_ui/screens/product/product_widgets/product_image_card.dart';
import 'package:flutter/material.dart';

class ProductGridviewData extends StatefulWidget {
  const ProductGridviewData({super.key});

  @override
  State<ProductGridviewData> createState() => _ProductGridviewDataState();
}

class _ProductGridviewDataState extends State<ProductGridviewData> {
  int selectedDataIndex = 0;

  final List<Map<String, dynamic>> productData = [
    {
      "title": "Cauliflower (Phul Gobi)",
      "imageUrl":
          "https://imgs.search.brave.com/XXGCJv2hbBnbcNPJ8aONeHCP0PuBUg2tbO3vncMhex8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9ydWtt/aW5pbTIuZmxpeGNh/cnQuY29tL2ltYWdl/LzQxNi80MTYvbDVi/ZDV6azAvcGxhbnQt/c2VlZC9rL3EvZy84/MDAtY2F1bGlmbG93/ZXItMTQ3NC1zZWVk/czgwMC1hbmRvci1v/cmlnaW5hbC1pbWFn/Z3l1dXA5anNkemdm/LmpwZWc_cT03MCZj/cm9wPWZhbHNl",
      "metaText": "1 piece (400-600 g)",
      "lowStockText": "Only 3 items left",
      "timeText": "17 MINS",
      "offerText": "22% OFF",
      "price": 24,
      "mrp": 31,
    },
    {
      "title": "Fresh Tomatoes",
      "imageUrl":
          "https://imgs.search.brave.com/wxJXLnKlgQILDnlH8AqHCW_JZz-t1MWcFdPJo8l52Is/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/Y3JlYXRlLnZpc3Rh/LmNvbS9hcGkvbWVk/aWEvc21hbGwvMTg2/Mzg4NzI4L3N0b2Nr/LXBob3RvLWNsb3Nl/LXZpZXctZnJlc2gt/cmlwZS1jaGVycnkt/dG9tYXRvZXMtdGFi/bGUtbmFwa2lu",
      "metaText": "500 g",
      "lowStockText": "Hurry, few left",
      "timeText": "15 MINS",
      "offerText": "10% OFF",
      "price": 18,
      "mrp": 20,
    },
    {
      "title": "Onions (Pyaaz)",
      "imageUrl":
          "https://imgs.search.brave.com/SgXDu35tHfpwoXjaKE9DMYYbffJ9xnoe9uj8tB6Mfuw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNjUv/NjQxLzA0Ny9zbWFs/bC9jbG9zZS11cC1v/Zi1hLXJlZC1vbmlv/bi1zaG93Y2FzaW5n/LWl0cy1sYXllcnMt/YW5kLXRleHR1cmUt/cGhvdG8uanBn",
      "metaText": "1 kg",
      "lowStockText": "In high demand",
      "timeText": "12 MINS",
      "offerText": "15% OFF",
      "price": 42,
      "mrp": 49,
    },
    {
      "title": "Green Capsicum",
      "imageUrl":
          "https://imgs.search.brave.com/ejHE5Dv8XuoLiNA_i_aKFimh3jFDTTiMEK8rf7ry5AU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbS5w/bHVja2suaW4vdW5z/YWZlLzEyMDB4MC91/cGxvYWRzLzIyNDUw/LW9yZ2FuaWMtZ3Jl/ZW4tY2Fwc2ljdW0u/anBn",
      "metaText": "250 g",
      "lowStockText": "Only 5 left",
      "timeText": "19 MINS",
      "offerText": "20% OFF",
      "price": 30,
      "mrp": 38,
    },
    {
      "title": "Fresh Carrots",
      "imageUrl":
          "https://imgs.search.brave.com/gTBiPVx1iy9asdAHjzdD8GKZSTiDHOKjo9-aTa9p578/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQ0/MjMzNDk5Ny9waG90/by9zZWVuLWZyb20t/YWJvdmUtc29tZS1m/cmVzaC1yYXctY2Fy/cm90cy1pbi1hLXdv/b2Rlbi1ib3dsLWlu/LWNsb3NlLXVwLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1w/T1dqY1I1Z2prRGJP/Z0UzeFFZYmdseEFP/RjVsWENNY05zLVIz/bl94bkVBPQ",
      "metaText": "500 g",
      "lowStockText": "Stock running low",
      "timeText": "14 MINS",
      "offerText": "18% OFF",
      "price": 22,
      "mrp": 27,
    },
    {
      "title": "Potatoes (Aloo)",
      "imageUrl":
          "https://imgs.search.brave.com/-53XPXm5C3jB1zqPPjX6rhC597R1poUfYRbKkH10mo4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWFn/ZS5zaHV0dGVyc3Rv/Y2suY29tL2ltYWdl/LXBob3RvL3lvdW5n/LXBvdGF0b2VzLXJh/dy1rbmlmZS1vbi0y/NjBudy0yNDcwNzk4/MTM5LmpwZw",
      "metaText": "1 kg",
      "lowStockText": "Available now",
      "timeText": "10 MINS",
      "offerText": "12% OFF",
      "price": 35,
      "mrp": 40,
    },
    {
      "title": "Broccoli",
      "imageUrl":
          "https://imgs.search.brave.com/haQLbvnXGyiG5yDC1Uz_EmwVltDx_P7o1BRe1L_uBxg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzU5LzE2LzIw/LzM2MF9GXzU5MTYy/MDk3XzR5UWZnbzJZ/VG1CaEd3OW5MVjVo/dWJiY201Q25Rb0hM/LmpwZw",
      "metaText": "1 piece (300-400 g)",
      "lowStockText": "Only 2 left",
      "timeText": "20 MINS",
      "offerText": "25% OFF",
      "price": 55,
      "mrp": 73,
    },
    {
      "title": "Cucumber (Kheera)",
      "imageUrl":
          "https://imgs.search.brave.com/oOLhJjaCcq09E2iMVqnPhYhBFq4NewKH2ktE02ABa20/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFZVEYtRHNLUkwu/anBn",
      "metaText": "500 g",
      "lowStockText": "Selling fast",
      "timeText": "13 MINS",
      "offerText": "14% OFF",
      "price": 19,
      "mrp": 22,
    },
    {
      "title": "Spinach (Palak)",
      "imageUrl":
          "https://imgs.search.brave.com/vMHIOya4OyqQXXaHKxvTpXZaL9Em2lu2xW6RPrUNi8U/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMw/OTgyNzk3MS9waG90/by9oaWdoLWFuZ2xl/LXZpZXctb2YtbGVh/Zi12ZWdldGFibGUt/aW4tYm93bC1vbi13/aGl0ZS1iYWNrZ3Jv/dW5kLWZyYW5jZS5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/MEtuTzdURURqSm1P/bE9GUlRqLVdUSDYy/OGpoLVFCaG55MlV3/N0NsV0U5az0",
      "metaText": "1 bunch (250 g)",
      "lowStockText": "Only 4 left",
      "timeText": "16 MINS",
      "offerText": "20% OFF",
      "price": 15,
      "mrp": 19,
    },
    {
      "title": "Lady Finger (Bhindi)",
      "imageUrl":
          "https://imgs.search.brave.com/nIUmYqwzhjpQkKuH3_XCHBojPZjuelk0M3pwmIxxzrI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMzkv/NjUyLzIxNy9zbWFs/bC9haS1nZW5lcmF0/ZWQtb2tyYS1mcmVz/aC1va3JhLWdyZWVu/LW9rcmEtZ3JlZW4t/cm9zZWxsZS1sYWR5/LXMtZmluZ2Vycy1s/YWR5LXMtZmluZ2Vy/LW9rcmEtdHJhbnNw/YXJlbnQtYmFja2dy/b3VuZC1wbmcucG5n",
      "metaText": "500 g",
      "lowStockText": "Almost gone",
      "timeText": "18 MINS",
      "offerText": "17% OFF",
      "price": 26,
      "mrp": 31,
    },
    {
      "title": "Cauliflower (Phul Gobi)",
      "imageUrl":
          "https://imgs.search.brave.com/Do8JwgKs9iHAsJtXFRlQWlR-8HrO6ilhYwpgKX8_eoM/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuZnJlZWltYWdl/cy5jb20vdmFyaWFu/dHMvd21RYTMyYURX/V003RDlwaGpXWEJk/NnBjLzYyNGYwZGMx/ZGZmOWJkY2NhYjAz/MmY5M2MzM2U3OWRl/Nzg0ODE3NzBlNzll/MjFkM2IwNDY5ZGFm/NTFmMDI3OTc",
      "metaText": "1 piece (400-600 g)",
      "lowStockText": "Only 3 items left",
      "timeText": "17 MINS",
      "offerText": "22% OFF",
      "price": 24,
      "mrp": 31,
    },
    {
      "title": "Fresh Strawberries",
      "imageUrl":
          "https://imgs.search.brave.com/GFZMcQQWI4g53-ShDkzW13FbmXD3zOaAJFTm88QUFSM/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9ud3dp/bGRmb29kcy5jb20v/Y2RuL3Nob3AvZmls/ZXMvZnJlc2hfc3Ry/YXdiZXJyaWVzX3dl/Yi5qcGc_dj0xNzYw/OTE4MDE4JndpZHRo/PTIxMDc",
      "metaText": "250 g box",
      "lowStockText": "Limited stock available",
      "timeText": "20 MINS",
      "offerText": "30% OFF",
      "price": 120,
      "mrp": 170,
    },
    {
      "title": "Brown Bread (Whole Wheat)",
      "imageUrl":
          "https://imgs.search.brave.com/6nZKIPEmCAA_YWW4SrEk3QtDUw7YXNVoiJY-gcKN1_k/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNzgz/MTMwMDQvcGhvdG8v/bG9hZi1vZi13aG9s/ZS1ncmFpbi1icmVh/ZC5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9R09YQ2JRSkJy/RnhlbzNrRDVpU3R2/a0xxVUhkaDQ0QmZH/Y1hyOFNXYWNQdz0",
      "metaText": "400 g loaf",
      "lowStockText": "Only 2 loaves left",
      "timeText": "15 MINS",
      "offerText": "10% OFF",
      "price": 45,
      "mrp": 50,
    },
    {
      "title": "Bananas (Robusta)",
      "imageUrl":
          "https://imgs.search.brave.com/PjevKE4GHVY1G7drYmKsycQPvwco1h39hR17Wda6l3I/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9iaG9v/bWlmcmVzaC5jb20v/aW1hZ2UvY2FjaGUv/Y2F0YWxvZy9GcnVp/dHMvcm9idXN0YSUy/MGJhbmFuYS01NTB4/NTUwdy5qcGc",
      "metaText": "1 dozen",
      "lowStockText": "Selling fast",
      "timeText": "12 MINS",
      "offerText": "15% OFF",
      "price": 55,
      "mrp": 65,
    },
    {
      "title": "Apples (Shimla)",
      "imageUrl":
          "https://imgs.search.brave.com/S-afcWOc_VfyDJSbTBZB7JGpXqm1kJ6RrrHNsGBYjVU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9idXJz/dC5zaG9waWZ5Y2Ru/LmNvbS9waG90b3Mv/Ym93bC1vZi1yZWQt/YXBwbGVzLmpwZz93/aWR0aD0xMDAwJmZv/cm1hdD1wanBnJmV4/aWY9MCZpcHRjPTA",
      "metaText": "1 kg",
      "lowStockText": "Fresh stock today",
      "timeText": "14 MINS",
      "offerText": "20% OFF",
      "price": 150,
      "mrp": 190,
    },
    {
      "title": "Almonds (Badam)",
      "imageUrl":
          "https://imgs.search.brave.com/_hQcQSDngmj-0EoyYZjOBGLduvovSMKaQFJR3E680dA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMTEv/MjE2LzExOS9zbWFs/bC9hbG1vbmRzLW51/dHMtd2l0aC1sZWFm/LWNsb3NlLXVwLWFs/bW9uZHMtb24tc2Fj/ay1iYWNrZ3JvdW5k/LXJvYXN0ZWQtYWxt/b25kLWZvci1zbmFj/ay1mcmVlLXBob3Rv/LmpwZw",
      "metaText": "250 g pack",
      "lowStockText": "Only 3 packs left",
      "timeText": "25 MINS",
      "offerText": "18% OFF",
      "price": 220,
      "mrp": 270,
    },
    {
      "title": "Fresh Milk (Toned)",
      "imageUrl":
          "https://imgs.search.brave.com/MSjBRly6i74BW8r1AFyiqUI9sQ2OKo30S0UkEA2VkV4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aWlt/Zy50aXN0YXRpYy5j/b20vZnAvMy8wMDcv/Nzg1L2Z1bGwtb2Yt/ZW5lcmd5LWhlYWx0/aC1iZW5lZml0cy1w/cm90ZWluLWFtdWwt/Z29sZC1ob21vZ2Vu/aXNlZC1zdGFuZGFy/ZGlzZWQtbWlsay01/MTkuanBn",
      "metaText": "1 L pouch",
      "lowStockText": "Available till evening",
      "timeText": "8 MINS",
      "offerText": "5% OFF",
      "price": 52,
      "mrp": 55,
    },
    {
      "title": "Chocolate Muffins (Pack of 2)",
      "imageUrl":
          "https://imgs.search.brave.com/aZtvTwIuNPEdkCh5r2DHwquUOtXSH6EsvVvcJTUwhNI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly96ZXN0/eWJha2Vycy5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjUv/MDEvSU1HXzkzNzgt/MS1zY2FsZWQtNjAw/eDYwMC5qcGVn",
      "metaText": "2 pieces (120 g each)",
      "lowStockText": "Only 1 pack left",
      "timeText": "18 MINS",
      "offerText": "25% OFF",
      "price": 75,
      "mrp": 100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CategoryList(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                mainAxisExtent: 345,
              ),
              itemCount: productData.length,
              itemBuilder: (context, index) {
                final item = productData[index];
                return ProductCard(
                  title: item['title'],
                  imageUrl: item['imageUrl'],
                  metaText: item['metaText'],
                  lowStockText: item['lowStockText'],
                  timeText: item['timeText'],
                  offerText: item['offerText'],
                  price: item['price'],
                  mrp: item['mrp'],
                  onAdd: () {},
                  onFav: () {},
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
