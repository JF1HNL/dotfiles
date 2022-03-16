import requests, json

content = input("内容は？\n")
url = open("url.txt").read()
res = requests.post(url, data=json.dumps({
  'text': content,
  'channel': '#push',
  'webhookbot': 'text',
  'username': 'メッセージを転送するモカ'
}))
print(res)