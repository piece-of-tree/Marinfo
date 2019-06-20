from flask import Flask, jsonify, abort, request
from flask_cors import CORS
import feedparser
from feedparser import parse  
from datetime import datetime as dt  
from webbrowser import open as browserOpen  
from urllib.parse import urlencode  

# URLの定義  
urls = [  
    'https://gigazine.net/index.php?/news/rss_2.0/',  
    'https://japanese.engadget.com/rss.xml',  
    'https://jp.techcrunch.com/feed/',  
    'https://www.gizmodo.jp/index.xml', 
    'http://www3.asahi.com/rss/digital.rdf',
    'https://news.yahoo.co.jp/pickup/rss.xml',
    'https://feed.infoq.com/jp'
]  


# 日付のパース用関数  
def parseDate(dateData):  
    return dt(  
        dateData.tm_year,  
        dateData.tm_mon,  
        dateData.tm_mday,  
        dateData.tm_hour,  
        dateData.tm_min,  
        dateData.tm_sec  
    )  


# リスト内包表記でサクッと取得&整形  
entries = [  
    {  
        'title': entry['title'],  
        'link': entry['link'],  
        'date': parseDate(entry['updated_parsed'] or entry['published_parsed'])  
    }  
    for url in urls  
    for entry in parse(url).entries  
]  
# 日付順でソート  
entries.sort(key=lambda x: x['date'], reverse=True) 





app = Flask(__name__)
CORS(app)
app.config['JSON_AS_ASCII'] = False

rss_url = "https://news.yahoo.co.jp/pickup/rss.xml"
feeds = feedparser.parse(rss_url)

feeds_list = []

for entry in feeds.entries:
    feeds_list.append({"title": entry.title, "link": entry.link})

@app.route('/feeds/', methods=['GET'])
def get_items():
    # return jsonify(feeds_list), 200
    return jsonify(entries), 200


if __name__ == "__main__":
    app.run(debug=True)