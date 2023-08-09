part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    List itemMainMenu = [
      {'image': 'assets/images/fi_grid.png', 'text': 'Discover'},
      {'image': 'assets/images/fi_layers.png', 'text': 'History'},
      {'image': 'assets/images/fi_heart.png', 'text': 'Wishlist'},
      {'image': 'assets/images/fi_settings.png', 'text': 'Setting'},
    ];

    return Scaffold(
        body: GeneralWidgetPage(
            child: Stack(children: [
      ListView(children: [
        Container(
            margin: const EdgeInsets.only(top: 25),
            child: ListTile(
                leading: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/pic_leading.png')))),
                title: Text('Joy Singgih',
                    style: GoogleFonts.inter()
                        .copyWith(fontWeight: FontWeight.w700)),
                subtitle: Text('Level 109', style: GoogleFonts.inter()),
                trailing: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/pic_notification.png')))))),
        Container(
            margin: const EdgeInsets.only(top: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Popular Bids',
                      style: GoogleFonts.inter().copyWith(
                          fontWeight: FontWeight.w700, fontSize: 18))),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                        margin: const EdgeInsets.only(left: 14, right: 10),
                        child: const CommonCardPopularWidget(
                            imageAsset: 'assets/images/img_popular_1.png',
                            title: 'The Masa',
                            subtitle: '35m 11s')),
                    Container(
                        margin: const EdgeInsets.only(right: 14),
                        child: const CommonCardPopularWidget(
                            imageAsset: 'assets/images/img_popular_2.png',
                            title: 'The Masa',
                            subtitle: '35m 11s'))
                  ]))
            ])),
        Container(
            margin: const EdgeInsets.only(top: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Browse',
                      style: GoogleFonts.inter().copyWith(
                          fontWeight: FontWeight.w700, fontSize: 18))),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                        margin: const EdgeInsets.only(left: 14, right: 10),
                        child: const CommonCardBrowseWidget(
                            imageAsset: 'assets/images/pic_browse_1.png',
                            title: 'Vector',
                            subtitle: '12,049 items')),
                    Container(
                        margin: const EdgeInsets.only(right: 14),
                        child: const CommonCardBrowseWidget(
                            imageAsset: 'assets/images/pic_browse_2.png',
                            title: '3D',
                            subtitle: '589 items')),
                    Container(
                        margin: const EdgeInsets.only(right: 14),
                        child: const CommonCardBrowseWidget(
                            imageAsset: 'assets/images/pic_browse_3.png',
                            title: 'Vector',
                            subtitle: '589 items'))
                  ]))
            ]))
      ]),
      Column(children: [
        const Expanded(child: SizedBox()),
        Container(
            color: Colors.white,
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (dynamic item in itemMainMenu)
                    ItemMainMenuWidget(
                        imageAsset: item['image'], text: item['text'])
                ]))
      ])
    ])));
  }
}
