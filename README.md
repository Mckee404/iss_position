# iss_position

JsonSerializableを利用して、こちらのAPI(http://api.open-notify.org/iss-now.json)
から現在の国際宇宙ステーションの位置を取得します。

final iss_now=await getIssNow();
とすると、
緯度はiss_now.iss_position?.latitude
経度はiss_now.iss_position?.longitude
タイムスタンプはiss_now.timestamp
から参照できます。
