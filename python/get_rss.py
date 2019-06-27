import feedparser
import pprint

# RSSから記事タイトルを取得
# feed_url = 'https://liginc.co.jp/feed'
# feed_url = 'http://www3.asahi.com/rss/digital.rdf'
# feed_url = 'https://news.yahoo.co.jp/pickup/rss.xml'
feed_url = 'https://rss.msn.com/ja-jp/'

# URLの定義
urls = [
    'https://gigazine.net/index.php?/news/rss_2.0/',
    'https://japanese.engadget.com/rss.xml',
    'https://jp.techcrunch.com/feed/',
    'https://www.gizmodo.jp/index.xml',
    'http://www3.asahi.com/rss/digital.rdf',
    'https://news.yahoo.co.jp/pickup/rss.xml',
    'https://feed.infoq.com/jp',
    'http://www.feed43.com/1181426462304856.xml',
    # 'http://rocketnews24.com/feed/',
    'https://assets.wor.jp/rss/rdf/ynnews/news.rdf',
    'https://wired.jp/rssfeeder/',
    'http://www.moguravr.com/feed/'
]

error_url = 'http://feeds.rocketnews24.com/rocketnews24'

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
print("")
print("")
print("")
print("")

i = 0
for url in urls:
    feed = feedparser.parse(url)['feed']
    #print(feed.title_detail.value)


#feed = feedparser.parse(error_url)
#print(feed.title_detail.value)