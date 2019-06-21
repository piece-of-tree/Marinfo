必要なパッケージのインストール
$ sudo pip3 install flask flask-cors feedparser

サーバーの実行
$ export FLASK_APP=rss_api_server.py
$ flask run --debugger --reload --host=0.0.0.0
