class GridItemData {
  final String image1;
  final String image2;
  final String title;
  final String? moreText;

  GridItemData({
    required this.image1,
    required this.image2,
    required this.title,
    this.moreText,
  });
}

class GridItemData2 {
  final String image1;
  final String image2;
  final String title;
  final String? moreText;

  GridItemData2({
    required this.image1,
    required this.image2,
    required this.title,
    this.moreText,
  });
}

final List<GridItemData> gridItemsList = [
  GridItemData(
    image1:
        'https://imgs.search.brave.com/RSLujQfWvC3faPgLPkwz3aH3JwCGNYj8id1Hs3Z0BBg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/b2NvbnV0LXN0aWxs/LWxpZmVfMjMtMjE1/MTUyNjg4MC5qcGc_/c2VtdD1haXNfaHli/cmlkJnc9NzQwJnE9/ODA',
    image2:
        'https://imgs.search.brave.com/Luy6JbAw5gxfm7DGYVVeitMdzksBmUR3XNxQP_we_-I/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMy/ODIyMDcwNS92ZWN0/b3IvbWlsay1wb3Vy/aW5nLWZyb20tY2Fy/dG9uLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz16SDVUVDZU/aFFHcUpwMGVfZG44/TGM5a2dvZzI5Y3ll/a2tVcy1lc2g5bjlv/PQ',
    title: 'Favourites',
    moreText: '+7 more',
  ),
  GridItemData(
    image1:
        'https://imgs.search.brave.com/pAVfVjeK5eyz7mA6-8299LYb4Op3YUXlDCztswFzrYk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9iaWdv/ZmZlcnMuY28uaW4v/d3AtY29udGVudC91/cGxvYWRzLzIwMjIv/MDQvQW11bC1Hb2xk/LU1pbGstNTAwbWwu/anBn',
    image2:
        'https://imgs.search.brave.com/Evbty3uqU26VMr6PTxtRHnf3hWCR40cCunHsZEhJbjA/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/aGVyaXRhZ2Vmb29k/cy5pbi9zdGF0aWMv/aW1hZ2VzL2RldGFp/bHNsaWRlci9tZWdh/L3Byb2Jpb3RpY2N1/cmQuanBn',
    title: 'Milk, Curd & Paneer',
    moreText: '+10 more',
  ),

  GridItemData(
    image1:
        'https://imgs.search.brave.com/uvFg7Zpjdh1rbsgcQKlQK8-1gb0Hv7tcanm1hMLajOw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1L2Iz/LzZjLzk1YjM2Y2Rj/YTc5OTc5YjU1ZTMy/YzRmZjhlYWNlMDYz/LmpwZw',
    image2:
        'https://imgs.search.brave.com/8ZYG9tEWc72QLDvtsskWK2UXKTln4JbuCxhiyBNA1uI/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/ZGVzaWduZXJwZW9w/bGUuY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDIzLzAyL05h/bWtlZW4tcGFja2Fn/aW5nLTEucG5n',
    title: 'Chips & NamKeen',
    moreText: '+1 more',
  ),
  GridItemData(
    image1:
        'https://imgs.search.brave.com/egWYKmSnS90abKSqBpfzUcqPbIi9SyPtBXHjmEPwGs4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/c2hvcGlmeS5jb20v/cy9maWxlcy8xLzAy/MDEvMTc3MS83MDky/L2ZpbGVzL2hvbmV5/LXNwaWNlZC1sYXZl/bmRlci1oYW5kLWFu/ZC1ib2R5LWNvbGxl/Y3Rpb24tZmxhdGxh/eS1saWZlc3R5bGUt/bG93LXJlcy5qcGc_/dj0xNjgzOTA4MDA3',
    image2:
        'https://imgs.search.brave.com/z9FieVyD8YYjl2AmxXKZIZgKVeD2oXK_BHgXEISUZvM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9ob21l/ZXNzZW50aWFscy5p/bi9jZG4vc2hvcC9m/aWxlcy8xNzE5OTk2/Mjg1MTQzLTY5ZWUz/YTljNWNmMDRiZjU4/MTczOTJjZTJmNTg4/MjAzLWdvb2RzLTMw/MjQwM18yOTh4Mjk4/X2Nyb3BfY2VudGVy/LndlYnA_dj0xNzIx/NDg3NzAz',
    title: 'Home Essentials',
    moreText: '+8 more',
  ),
  GridItemData(
    image1:
        'https://imgs.search.brave.com/LxJbU3GvfI6TaIcq1v3cpYUOyJ1m4rNwEScSLTPU5ic/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTcy/NjM5MzM2L3Bob3Rv/L3ZlZ2V0YWJsZXMu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PW9meXp4d0R3cUNO/VVJkMkpJcTVBVktK/ekJvQk9ScnpNUVpK/VmFoS09PNGs9',
    image2:
        'https://imgs.search.brave.com/O9l77ttBD343zohbzl0Vq1wni3zLEJAzE7qT6E53EpA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9h/aS1nZW5lcmF0ZWQt/aW1hZ2UtYmFuYW5h/XzIzLTIxNTA2ODMw/NTIuanBnP3NlbXQ9/YWlzX2luY29taW5n/Jnc9NzQwJnE9ODA',
    title: 'Vegetables & Fruit',
    moreText: '+2 more',
  ),
  GridItemData(
    image1:
        'https://imgs.search.brave.com/_7S4a2vbI5cdS1DxgUJXd5u1nUs4OZds5P9FxSLCqGU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9wYW1w/ZXJzLWRpYXBlcnMt/c3VwZXJtYXJrZXQt/c2hlbGYtbm93eS1z/YWN6LXBvbGFuZC1h/cHJpbC1kaWZmZXJl/bnQtdHlwZXMtYWN0/aXZlLWJhYnktZHJ5/LXByb2N0ZXItZ2Ft/YmxlLWNvLW9mZmVy/ZWQtOTE0MDMzNjYu/anBn',
    image2:
        'https://imgs.search.brave.com/tTvmuW2tbiYoqiXcg87GFyZ5oOC7zn3AUdExT_vVYek/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tb3Ro/ZXJzcGFyc2guY29t/L2Nkbi9zaG9wL2Zp/bGVzL21vdGhlci1z/cGFyc2gtbmF0dXJh/bC1jYXJlLWJhYnkt/c29hcC1ib3gtMV81/ZjNiYjQxOC1mNjEz/LTQ0NzktOTkxMS04/ZmEyNmI1MGE0ZjUu/d2VicD92PTE3NjAx/NjQ0NjMmd2lkdGg9/NTMz',
    title: 'Baby Care',
  ),
];

// 2nd Grid Item data

final List<GridItemData2> gridItemsList2 = [
  GridItemData2(
    image2:
    'https://imgs.search.brave.com/uSxA57yr6w9xghj5atc6qV8DGrO8SuwHhVCWV-8OaMY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/Y29uc2Npb3VzZm9v/ZC5jb20vY2RuL3No/b3AvZmlsZXMvMV8y/LmpwZz92PTE3NTc0/OTAzNzkmd2lkdGg9/NTMz',
    image1:
    'https://imgs.search.brave.com/7JnMNuaooLzdrP9sbIWyma6XcohmYbcm2WdkhHtaDTg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/YW52ZXNoYW4uZmFy/bS9jZG4vc2hvcC9m/aWxlcy9BcnRib2Fy/ZDEyXzlhYTBiYjcw/LWM4ZGQtNGY3Zi1i/MmMwLTgxZTI0ODA5/OTE2Mi5qcGc_dj0x/NzQ5NTc5NDA3Jndp/ZHRoPTUzMw',
    title: 'Oil, Ghee & Masala',
    moreText: '+2 more',
  ),
  GridItemData2(
    image2:
    'https://imgs.search.brave.com/w0Kg9dJ9-7rIMMQD53H7PlZpBBq9Bx8TfM39w7UTQZk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9naXJp/LmluL2Nkbi9zaG9w/L2ZpbGVzLzYwMTc0/NV9BeXlhcHBhbl9B/WTEwMF9SZXNpbl83/X0luY2hfMV81MTJ4/NTEyLndlYnA_dj0x/NzMyNTE1MTA1',
    image1:
    'https://imgs.search.brave.com/BB7IxsKNvbtkH9BMU4BcIiSpLHxlbV8YJmeoKmvRRk0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9ydWtt/aW5pbTIuZmxpeGNh/cnQuY29tL2ltYWdl/LzQxNi80MTYveGlm/MHEvcG9vamEtdGhh/bGktc2V0L24vYy9p/L25vLXRyYWRpdGlv/bmFsLXBvb2phLXRo/YWxpLWZvci1uYXZy/YXRyaS1kdXJnYS1w/b29qYS1wb29qYS10/aGFsaS1vcmlnaW5h/bC1pbWFnbmFuZnV6/dWdhcGZuLmpwZWc_/cT03MCZjcm9wPWZh/bHNl',
    title: 'Pooja Needs',
    moreText: '+2 more',
  ),
  GridItemData2(
    image2:
    'https://imgs.search.brave.com/556TOtEjAj68_U4WBIfST0NoAyb6H46o7EmrNh-Ut38/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG4u/emVwdG9ub3cuY29t/L3Byb2R1Y3Rpb24v/dHI6dy00MDMsYXIt/MTIwMC0xMjAwLHBy/LXRydWUsZi1hdXRv/LHEtODAvY21zL3By/b2R1Y3RfdmFyaWFu/dC9iNDA0MGU3Ni0z/ZGNkLTRiYWUtYjcx/ZS03ZmRhMmY0YTBk/NTguanBlZw',
    image1:
    'https://imgs.search.brave.com/GZVV5p4afLlQiE0MYubsAg7HwZMPBdrgzh1rToGASWs/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTFFdVFtcXo4TUwu/anBn',
    title: 'Drink & Juice',
    moreText: '+6 more',
  ),
  GridItemData2(
    image2:
    'https://imgs.search.brave.com/ct23MmUpen5tlIyJo8t9j6Ay0_ZJlGVRJmFaiOvTpBQ/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTgw/ODIwMjgwNi9waG90/by9wcm9mZXNzaW9u/YWwtaGFpci1jYXJl/LXByb2R1Y3RzLXdp/dGgtY29tYi1vbi13/b29kZW4tYmFja2dy/b3VuZC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9Vk1TY0VB/R1llRVhlc1F6Q0dp/bWlLN0s2cTBMXzV6/S2dwbVJrbWRYYk1B/MD0',
    image1:
    'https://imgs.search.brave.com/p-ag8BtvYmNN7NqaMfGty4PF149pw4GsSYEq_Ohdiek/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWcu/eW91dHViZS5jb20v/dmkvZ3JxdEtKaTho/V1kvaHFkZWZhdWx0/LmpwZw',
    title: 'Body & Hair Care',
    moreText: '+3 more',
  ),
  GridItemData2(
    image1:
    'https://imgs.search.brave.com/3TY8SM64xrhnO6plBF1PmLHYqIvEwRZoEP6duVphEjE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9taW5p/c3RyeW9mbnV0cy5p/bi9jZG4vc2hvcC9w/cm9kdWN0cy80X2Y3/NjhlNTA2LTRkMDYt/NDk5Yy04ZjAyLTNk/YmYwYzNhNzRmMV8x/MDAweDEwMDAuanBn/P3Y9MTc1NTAwMTA4/NQ',
    image2:
    'https://imgs.search.brave.com/lWxk1t5Ihja9qOIm-VVya7s5bojU-idPw07FDteWScM/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jZXJl/YWxzLTE3MzQwMjQ3/LmpwZw',
    title: 'Dry Fruits & Cereals',
    moreText: '+3 more',
  ),
  GridItemData2(
    image2:
    'https://imgs.search.brave.com/czV6bTLesXxhnB1JcpLW2mN1C9IkDn1nWk21AiMI0sM/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tYXJ2/ZWwtYjEtY2RuLmJj/MGEuY29tL2YwMDAw/MDAwMDIwOTM1My93/d3cud2hpdHRhcmQu/Y28udWsvZHcvaW1h/Z2UvdjIvQkNHVF9Q/UkQvb24vZGVtYW5k/d2FyZS5zdGF0aWMv/LS9TaXRlcy13aGl0/dGFyZC1tYXN0ZXIt/Y2F0YWxvZy9kZWZh/dWx0L2R3ODRjM2M2/MmUvaW1hZ2VzL2hp/LXJlcy8zMzU4MDIt/dGVhX2Rpc2NvdmVy/aWVzX0FmdGVybm9v/bl90ZWFfdGVhYmFn/cy0xLmpwZz9zdz0y/NDEmc2g9MjQxJnNt/PWZpdA',
    image1:
    'https://imgs.search.brave.com/BjAsrGhUij-3JJTcL3lzdx2N-Ecu70oEufarmOEkaJY/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/ODEtS3RCQ0FJOEwu/anBn',
    title: 'Tea & Coffee',
  ),
];
