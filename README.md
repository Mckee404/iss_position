# iss_position

JsonSerializableを利用して、こちらのAPI(http://api.open-notify.org/iss-now.json)
から現在の国際宇宙ステーションの位置を取得します。

final iss_now=await getIssNow()<br>
とすると、<br>
緯度は<br>iss_now.iss_position?.latitude<br>
経度は<br>iss_now.iss_position?.longitude<br>
タイムスタンプは<br>iss_now.timestamp<br>
から参照できます。
