import 'url_model.dart';

UrlModel links(String raw) {
  List urlLinks = [];
  UrlModel links = UrlModel(urlLink: urlLinks);

  RegExp regExp =
      new RegExp(r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+');
  Iterable<RegExpMatch> regMatches = regExp.allMatches(raw);

  regMatches.forEach((match) {
    urlLinks.add(raw.substring(match.start, match.end));
  });
  return links;
}
