from flask import Flask, jsonify, abort, request
from flask_cors import CORS
import feedparser

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
    return jsonify(feeds_list), 200

if __name__ == "__main__":
    app.run(debug=True)