import 'extractor.dart';

void main() {
  print(links(
          "this text contains www.some.url.links: not one, but http://pub.dev ooh wait even https://www.some.secure.site ooh and ftp://just.for.files you know ?")
      .urlLink
      .toString());
}
