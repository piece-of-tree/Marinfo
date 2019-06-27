from flask import Flask, jsonify, abort, request
from flask_cors import CORS
import feedparser
from feedparser import parse
from datetime import datetime as dt
from webbrowser import open as browserOpen
from urllib.parse import urlencode
import redis


# Redis に接続します
# Redisサーバーのホスト名, ポート番号, データベース番号 を指定します
pool = redis.ConnectionPool(host='13.231.180.101', port=6379, db=0)
redis = redis.StrictRedis(connection_pool=pool)
entries = []

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


# marioとして名前とランクを格納
#redis.hmset('mario', {'password': 'hoge'})

url_key = 'url'
i = 0
for url in urls:
    i = i + 1
    # user01の情報に都道府県を追加
    redis.hset('mario', url, url)


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
#entries = [
#    {
#        'title': entry['title'],
#        'link': entry['link'],
#        'date': parseDate(entry['updated_parsed'] or entry['published_parsed'])
#    }
#    for url in urls
#    for entry in parse(url).entries
#]
# 日付順でソート
#entries.sort(key=lambda x: x['date'], reverse=True)



app = Flask(__name__)
CORS(app)
app.config['JSON_AS_ASCII'] = False

#rss_url = "https://news.yahoo.co.jp/pickup/rss.xml"
#feeds = feedparser.parse(rss_url)
#3print(feeds)


feeds_list = []
#entries = ["hoge"]
# for entry in feeds.entries:
#     feeds_list.append({"title": entry.title, "link": entry.link})



@app.route('/feeds/', methods=['GET'])
def get_items():
    # return jsonify(feeds_list), 200
    #print(entries)

    return jsonify(entries), 200





@app.route('/sendtext/', methods=['POST'])
def sendtext():
    url = request.form['url']
    ID = request.form['ID']
    user = request.form['user']
    redis.hset(user, ID, url)
    # リスト内包表記でサクッと取得&整形


    return jsonify(res='ok')


channels = []

@app.route('/sendName_rss/', methods=['POST'])
def sendName_rss():
    
    user = request.form['user']
    channels = redis.hkeys(user)
    print(channels)
    return jsonify(res='ok')


@app.route('/get_channels/', methods=['GET'])
def get_channels():
    # return jsonify(feeds_list), 200
    #print(entries)
    i = 0
    for channel in channels:
        channels[i] = channel[i].decode()
        channels[i] = channel[i].replace("b", "")
        channels[i] = channel[i].replace("'", "")
        i = i + 1

    return jsonify(channels), 200




@app.route('/sendName/', methods=['POST'])
def sendName():
    name = request.form['message']
    user_urls = redis.hvals(name)
    entries.clear()


    for url in user_urls:
        url = url.decode()
        url = url.replace("b", "")
        url = url.replace("'", "")
        #print(url)
        #temp = feedparser.parse(url)
        #print(temp)
        for entry in feedparser.parse(url).entries:
            #print(entry)
            #entries.append("hello")
            entries.append({"title": entry.title, "link": entry.link, "date": parseDate(entry['updated_parsed'] or entry['published_parsed'])})


    # 日付順でソート
    entries.sort(key=lambda x: x['date'], reverse=True)
    #print(entries)

    return jsonify(res='ok')


@app.route('/delete_rss/', methods=['POST'])
def delete_rss():
    
    del_rss = request.form['del_rss']
    user = request.form['user']
    redis.hdel(user, del_rss)
    
    print(user)
    print(del_rss)
    
    return jsonify(res='ok')

if __name__ == "__main__":
    app.run(debug=True)