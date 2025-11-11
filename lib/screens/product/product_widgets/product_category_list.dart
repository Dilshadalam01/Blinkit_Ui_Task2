import 'package:flutter/material.dart';
import 'package:blinkit_ui/screens/product/product_widgets/product_sidebar_grid.dart';


class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;

  final List<Map<String, String>> categories = [
    {
      "title": "Fresh Vegetables",
      "image": "https://imgs.search.brave.com/fWKY7U1w8Lp0THr1qQ89osKTstzn-6oEuNF4MzeOvLw/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/c2h1dHRlcnN0b2Nr/LmNvbS9pbWFnZS1w/aG90by93aWNrZXIt/YmFza2V0LWZpbGxl/ZC1mcmVzaC12ZWdl/dGFibGVzLTYwMG53/LTI0NjU0MTExODcu/anBn",
    },
    {
      "title": "Fresh Fruits",
      "image": "https://imgs.search.brave.com/c7dfuyNyewrlPsLmPNCl9-9fpVn6g3j2N1JbVo7MpLk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMjMv/MjE5LzI2NC9zbWFs/bC9mcmVzaC1mcnVp/dHMtaXNvbGF0ZWQt/b24td2hpdGUtYmFj/a2dyb3VuZC1nZW5l/cmF0aXZlLWFpLXBo/b3RvLmpwZWc"
    },
    {
      "title": "Exotic Fruits & Veggies",
      "image": "https://imgs.search.brave.com/gSopqS0xzLPB1UmSwx086aNewRc3teRs8BmUUhc-Hc0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90cm9w/aWNhbGV4b3RpY3Mu/aW4vY2RuL3Nob3Av/cHJvZHVjdHMvYnV5/LXdoaXRlLWRyYWdv/bi1mcnVpdC1vbmxp/bmVfMjA0OHgucG5n/P3Y9MTczNjk0NTQ2/NA"
    },
    {
      "title": "Dairy & Breakfast",
      "image": "https://imgs.search.brave.com/3cxC5Opy_XoBtJdr9wBV_tyLTPuwOiVAwOJVcM2iv5o/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuc3F1YXJlc3Bh/Y2UtY2RuLmNvbS9j/b250ZW50L3YxLzVl/OTg1YjgyMTM3N2M5/NjJkYTQzZDE4MS8x/NzU3NzA3NDI3MjY2/LUpBMDYwVjZBSk5M/UFhCSDRTMENNL2lt/YWdlLWFzc2V0Lmpw/ZWc"
    },
    {
      "title": "Tea, Coffee & Drinks",
      "image": "https://imgs.search.brave.com/NVNesmKxN_ZY7XBHWXrnRPeWE-IonOmwxcmUVzcYYY0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jdXAt/Y29mZmVlLXRlYS1j/YWZlLWJsYWNrLXdo/aXRlLXBob3RvLTE0/OTc0Njk5OC5qcGc"
    },
    {
      "title": "Instant & Frozen Food",
      "image": "https://imgs.search.brave.com/gdg_SBdgH7pe06RlkKvx_99sGiJqmktxEkdVO4qLmGM/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/bGFtYmVydHNsYXRl/bHkuY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDIzLzA5L2lu/c3RhbnQtcG90LWZy/ZWV6ZXItbWVhbHMt/OC53ZWJw"
    },
    {
      "title": "Dry Fruits & Masala",
      "image": "https://imgs.search.brave.com/53ZfyAmtbUyRJiCKPgM4ZvAnBQ3fZOkpcDsWwNEOsyM/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFjR0k0QTVZT0wu/anBn"
    },
    {
      "title": "Household Essentials",
      "image": "https://imgs.search.brave.com/4JSCqva3Nu0p8zcdCMcIykfNawYm6YM9opstc5M2KSA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9rYWl0/bGlubWFkZGVuLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/My8wMi9ob3VzZWhv/bGQtZXNzZW50aWFs/cy1saXN0LmpwZw"
    },
    {
      "title": "Cleaning & Bathroom",
      "image": "https://imgs.search.brave.com/v9TVKrkXC3oyviWQP78gm59ulfCQKiDJx_hPJAo3vbg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/bW9sbHltYWlkLmNv/bS91cy9lbi11cy9t/b2xseS1tYWlkL19h/c3NldHMvaW1hZ2Vz/L3RpcHMtZm9yLWNs/ZWFuaW5nLWJhdGhy/b29tLSgxKS53ZWJw"
    },
    {
      "title": "Beauty & Personal Care",
      "image": "https://imgs.search.brave.com/25MiNZp6YErht5G0ed5bm5p5WoCKNjqO4ndisx1tmeg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQw/OTk2NTMzMS9waG90/by9iZWF1dHktYm94/LXdpdGgtZmFjZS1h/bmQtYm9keS1jYXJl/LXByb2R1Y3RzLW9u/LWJlaWdlLWJhY2tn/cm91bmQuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPTA0clFD/ZWNBOUVSeUV6WTho/M2VveUh0clpaTVpv/MVRyTDR2MllLczNQ/V0U9"
    },
    {
      "title": "Baby Care",
      "image": "https://imgs.search.brave.com/9xbo7rKusjwvZUEHv4n6-AJ9NgsfA4AIkzFRCzQkDVU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/cG5nYXJ0cy5jb20v/ZmlsZXMvMS9CYWJ5/LUNhcmUtUHJvZHVj/dHMtUE5HLVBpY3R1/cmUucG5n"
    },
    {
      "title": "Meat & Eggs",
      "image": "https://imgs.search.brave.com/X7Zliuksq47tcK82rOCG1r9IcoMM7EILURWVxOBnAFY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9icmVh/a2Zhc3QtdHdvLWZy/aWVkLWVnZ3MtbWVh/dC1zdGVhay1kZWxp/Y2lvdXMtZGlzaC03/NTUxNzMxMy5qcGc"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      color: Colors.white,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CategoryItem(
              imagePath: category['image']!,
              title: category['title']!,
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() => selectedIndex = index);
              },
            ),
          );
        },
      ),
    );
  }
}
