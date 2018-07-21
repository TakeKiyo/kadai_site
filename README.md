事前課題で作りました

https://kadaiecsite.herokuapp.com/
ここにデプロイしました。

仕様書は、https://app.swaggerhub.com/apis/TakeKiyo/teamlab/1.0.0
ここでみることができます。

テスト期間とまるかぶりしており、思った以上に時間がとれませんでした、、

また、一からapiを書くことをしたことがなく、いろいろと不備があると思います。

具体的には、

・非同期に対応できなかった(ajaxを触ったことがなかった)

・バージョンを作らなかった

・商品をpostする際に、項目が要件を満たさない場合、viewではエラーを出すが、ステータスコードを200で返してしまう。

・検索機能をつけたが、api仕様書に書くことができなかった(swaggerの仕様上クエリを含むpathを指定できなかった)

商品検索をする場合、https://kadaiecsite.herokuapp.com/products?utf8=%E2%9C%93&search=
の後方に検索する単語をいれると検索することができます。

店の検索をする場合、https://kadaiecsite.herokuapp.com/shop?utf8=%E2%9C%93&search=
の後方に検索する単語をいれると検索することができます。


