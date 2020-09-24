# Algo: Url Extractor

## About
<p>Url Extractor is a simple algorithm that extracts urls from raw string and converts them to an iterable list!</p>

<p>This tool uses the RegExp (Regular expression pattern) to find the matches of url links in the raw strings</p>

## Sample

<pre>
<code>import 'extractor.dart';

void main() {
  print(links(
          "this text contains www.some.url.links: not one, but http://pub.dev ooh wait even https://www.some.secure.site ooh and ftp://just.for.files you know ?")
      .urlLink
      .toString());
}
</code>
</pre>
<p>The code, above prints the list(toString()) of all the available urls in the String text</p>

