import feedparser
import pprint

# RSSから記事タイトルを取得
# feed_url = 'https://liginc.co.jp/feed'
# feed_url = 'http://www3.asahi.com/rss/digital.rdf'
# feed_url = 'https://news.yahoo.co.jp/pickup/rss.xml'
feed_url = 'https://feed.infoq.com/jp'


# feedについてのテスト
feed_result = feedparser.parse(feed_url)
# 記事タイトルを取得し表示する
for entry in feed_result.entries:
    print(entry.title)

feed = feedparser.parse(feed_url)['feed']

print("")
pprint.pprint(feed)
print("")
print("")

# entryについてのテスト
entries = feedparser.parse(feed_url)['entries']

entry = entries[1]

pprint.pprint(entry)