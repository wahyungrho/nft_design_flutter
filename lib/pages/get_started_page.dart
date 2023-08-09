part of 'pages.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralWidgetPage(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset('assets/images/img_getstarted.png', width: 330),
      Container(
          margin: const EdgeInsets.only(top: 40),
          child: Text('Collect NFTs As\nYour Own Collection',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter()
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 26))),
      Container(
          margin: const EdgeInsets.only(top: 14),
          child: Text(
              'NFT is gonna help us to keep what\nis belong to us, like forever',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter()
                  .copyWith(fontSize: 16, color: const Color(0XFF909FB4)))),
      CommonButtonPrimaryWidge(
          title: 'Getting Started',
          onTap: () {
            context.go('/sign-up');
          })
    ])));
  }
}
