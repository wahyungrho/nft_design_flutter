part of '../pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralWidgetPage(
        child: ListView(padding: const EdgeInsets.all(20), children: [
      Container(
          margin: const EdgeInsets.only(top: 70),
          child: Text('Start Collecting\nAmazing Artworks',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter()
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 26))),
      Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(24)),
          child: Column(children: [
            const CommonTextFieldWidget(
                hintText: 'Your full name', label: 'Full Name'),
            const CommonTextFieldWidget(
                hintText: 'Your email address', label: 'Email Address'),
            const CommonTextFieldWidget(
                hintText: 'Password your account',
                label: 'Password',
                obscureText: true),
            CommonButtonPrimaryWidge(
                title: 'Register Account',
                onTap: () {
                  context.goNamed('main-page');
                },
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10))
          ])),
      Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 160),
          child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text('Sign In to My Account',
                      style: GoogleFonts.inter().copyWith(
                          fontWeight: FontWeight.w300, color: Colors.grey)))))
    ]));
  }
}
