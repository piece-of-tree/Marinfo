import redis

# Redis に接続します
# Redisサーバーのホスト名, ポート番号, データベース番号 を指定します
pool = redis.ConnectionPool(host='13.231.180.101', port=6379, db=0)
redis = redis.StrictRedis(connection_pool=pool)

#abc = redis.get('mystr1')
#print(abc.decode())

# 'hoge' というキーで 'moge' という値を追加します
# redis.set('luu', '')

# # 追加した値を削除します
# result = redis.delete('hoge')


# URLの定義  
urls = [  
    'http://www3.asahi.com/rss/digital.rdf',
    'https://mainichi.jp/rss/etc/mainichi-flash.rss',
    'https://assets.wor.jp/rss/rdf/nikkei/news.rdf',
    'https://assets.wor.jp/rss/rdf/yomiuri/latestnews.rdf',
    'https://assets.wor.jp/rss/rdf/sankei/affairs.rdf',
    'http://www.news24.jp/rss/index.rdf',
    'https://www3.nhk.or.jp/rss/news/cat0.xml',
    ' https://rss.msn.com/ja-jp/',
    'https://news.yahoo.co.jp/pickup/rss.xml',
]  

ID = [ 
    'asahi',
    'mainichi', 
    'nikkei' ,
    'yomiuri' ,
    'sankei' ,
    'newtv' ,
    'nhk' ,
    'msn',
    'yahoo',
]




# 要素を作成する
#redis.lpush('kataoka', 'password')


#for url in urls:
#	redis.linsert('kataoka', 'after', 'password', url)


 
# 複数要素を先頭に追加する
# redis.lpush('kataoka', 'BBB', 'CCC')
 
# 要素AAAの後ろに要素XXXを挿入する
# redis.linsert('kataoka', 'after', 'AAA', 'XXX')
 
# 要素CCCの前に要素YYYを挿入する
# redis.linsert('kataoka', 'before', 'CCC', 'YYY')


# 0番めの要素を取得
#key_0 = redis.lindex('kataoka', 0) # b'XXX'
 
# 0番目から1番目の要素を取得
#key_1 = redis.lrange('kataoka', 0, 1)
 
# 全件取得する
#key_all = redis.lrange('kataoka', 0, -1)

# 追加した値を削除します
result = redis.delete('luu')

#print(key_0)
#print(key_1)
#print(key_all)


# 
redis.hmset('luu', {"": ""})

url_key = 'url'
i = 0
for url in urls:
    # user01の情報に都道府県を追加
    redis.hset('luu', ID[i], url)
    i = i + 1
#show = redis.hgetall('mario')

#
#result = redis.delete('mario')


print("")
print("")

#print(sh)