
proxy-groups: ~
rule-providers:
  🖥本地网络:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Lan/Lan.yaml
    path: ./Rules/Other/LAN
    interval: 86400
  📥下载:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Download/Download.yaml
    path: ./Rules/Other/Download
    interval: 86400
  📥PT下载:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/honeyjuice/Clash_Loon_Configs@main/Clash/Rule/PrivateTracker.yaml
    path: ./Rules/Other/PrivateTracker
    interval: 86400
  ⛔️广告拦截:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/AdvertisingLite/AdvertisingLite.yaml
    path: ./Rules/Advertising/Advertising
    interval: 86400
  ⛔️广告拦截域名:
    type: http
    behavior: domain
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/AdvertisingLite/AdvertisingLite_Domain.yaml
    path: ./Rules/Advertising/Advertising_Domain
    interval: 86400
  🛑反劫持:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Hijacking/Hijacking.yaml
    path: ./Rules/Advertising/Hijacking
    interval: 86400
  🛡️隐私防护:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Privacy/Privacy_Classical.yaml
    path: ./Rules/Advertising/Privacy
    interval: 86400
  Ⓜ️微软服务:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Microsoft/Microsoft.yaml
    path: ./Rules/Microsoft/Microsoft
    interval: 86400
  🍎苹果服务:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Apple/Apple.yaml
    path: ./Rules/Apple/Apple
    interval: 86400 
  🎮游戏平台:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Game/Game.yaml
    path: ./Rules/Game/Game
    interval: 86400
  📺亚洲媒体:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/AsianMedia/AsianMedia.yaml
    path: ./Rules/Media/AsianMedia
    interval: 86400
  🎥国外媒体:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/GlobalMedia/GlobalMedia.yaml
    path: ./Rules/Media/GlobalMedia
    interval: 86400
  🎯国内网站:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/China/China.yaml
    path: ./Rules/DIRECT/China
    interval: 86400
  🚀代理:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Global/Global.yaml
    path: ./Rules/Other/Global
    interval: 86400
  🚀代理域名:
    type: http
    behavior: domain
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Global/Global_Domain.yaml
    path: ./Rules/Other/Global_Domain
    interval: 86400

rules:
- RULE-SET,🖥本地网络,DIRECT
- RULE-SET,🛑反劫持,⛔️ 广告拦截
- RULE-SET,⛔️广告拦截,⛔️ 广告拦截
- RULE-SET,⛔️广告拦截域名,⛔️ 广告拦截
- RULE-SET,🛡️隐私防护,🛡️ 隐私防护
- RULE-SET,🎯国内网站,DIRECT
- RULE-SET,🎯国内域名,DIRECT
- RULE-SET,📥下载,📥 下载
- RULE-SET,📥PT下载,📥 下载
- RULE-SET,Ⓜ️微软服务,Ⓜ️ 微软服务
- RULE-SET,🍎苹果服务,🍎 苹果服务
- RULE-SET,🎮游戏平台,🎮 游戏平台
- RULE-SET,📺亚洲媒体,📺 港台番剧
- RULE-SET,🎥国外媒体,🎥 国外媒体
- RULE-SET,🚀代理,🔰 节点选择
- RULE-SET,🚀代理域名,🔰 节点选择
- GEOIP,CN,DIRECT
- MATCH,🐟 漏网之鱼