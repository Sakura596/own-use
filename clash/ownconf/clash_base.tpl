port: 7890
socks-port: 7891
allow-lan: true
mode: Rule
log-level: info
external-controller: :9090

proxy-groups: ~
rule-providers:
   Unbreak:
    type: http
    behavior: classical
    path: ./RuleSet/Unbreak.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/Unbreak.yaml
    interval: 86400
  🖥本地网络:
    type: http
    behavior: classical
    path: ./RuleSet/LocalAreaNetwork.yaml
    url: https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Providers/LocalAreaNetwork.yaml
    interval: 86400
  ⛔️广告拦截:
    type: http
    behavior: classical
    path: ./RuleSet/Guard/Advertising.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/Guard/Advertising.yaml
    interval: 86400
  🛑反劫持:
    type: http
    behavior: classical
    path: ./RuleSet/Guard/Hijacking.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/Guard/Hijacking.yaml
    interval: 86400
  🛡️隐私防护:
    type: http
    behavior: classical
    path: ./RuleSet/Guard/Privacy.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/Guard/Privacy.yaml
    interval: 86400
  Ⓜ️微软服务:
    type: http
    behavior: classical
    path: ./RuleSet/Microsoft/Microsoft.yaml
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Microsoft/Microsoft.yaml
    interval: 86400
  🍎苹果服务:
    type: http
    behavior: classical
    path: ./RuleSet/Apple/Apple.yaml
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Apple/Apple.yaml
    interval: 86400 
  🎮游戏平台:
    type: http
    behavior: classical
    path: ./RuleSet/Game/Steam.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/Extra/Game/Steam.yaml
    interval: 86400
  📹油管视频:
    type: http
    behavior: classical
    path: ./RuleSet/StreamingMedia/YouTube.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/StreamingMedia/Video/YouTube.yaml
    interval: 86400
  🎥NETFLIX:
    type: http
    behavior: classical
    path: ./RuleSet/StreamingMedia/NETFLIX.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/StreamingMedia/Video/Netflix.yaml
    interval: 86400
  🎥Hulu:
    type: http
    behavior: classical
    path: ./RuleSet/StreamingMedia/Hulu.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/StreamingMedia/Video/Hulu.yaml
    interval: 86400  
  📺亚洲媒体:
    type: http
    behavior: classical
    path: ./RuleSet/StreamingMedia/StreamingSE.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/StreamingMedia/StreamingSE.yaml
    interval: 86400
  🌍国外媒体:
    type: http
    behavior: classical
    path: ./RuleSet/StreamingMedia/Streaming.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/StreamingMedia/Streaming.yaml
    interval: 86400
  🚀代理:
    type: http
    behavior: classical
    path: ./RuleSet/Global.yaml
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Global/Global.yaml
    interval: 86400
  🚀代理域名:
    type: http
    behavior: domain
    path: ./RuleSet/Global_Domain.yaml
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Global/Global_Domain.yaml
    interval: 86400
  🎯China:
    type: http
    behavior: classical
    path: ./RuleSet/China.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/China.yaml
    interval: 86400
  🎯ChinaIP:
    type: http
    behavior: ipcidr
    path: ./RuleSet/Extra/ChinaIP.yaml
    url: https://raw.githubusercontent.com/DivineEngine/Profiles/master/Clash/RuleSet/Extra/ChinaIP.yaml
    interval: 86400

rules:
- RULE-SET,Unbreak,DIRECT
- RULE-SET,🖥本地网络,DIRECT
- RULE-SET,🛑反劫持,⛔️ 广告拦截
- RULE-SET,⛔️广告拦截,⛔️ 广告拦截
- RULE-SET,🛡️隐私防护,🛡️ 隐私防护
- RULE-SET,Ⓜ️微软服务,Ⓜ️ 微软服务
- RULE-SET,🍎苹果服务,🍎 苹果服务
- RULE-SET,🎮游戏平台,🎮 游戏平台
- RULE-SET,📹油管视频,📹 油管视频
- RULE-SET,🎥NETFLIX,🎥 NETFLIX
- RULE-SET,🎥Hulu,🌍 Hulu
- RULE-SET,📺亚洲媒体,📺 港台番剧
- RULE-SET,🌍国外媒体,🌍 国外媒体
- RULE-SET,🚀代理,🔰 节点选择
- RULE-SET,🚀代理域名,🔰 节点选择
- RULE-SET,🎯China,🎯 全球直连
- RULE-SET,🎯ChinaIP,🎯 全球直连
- GEOIP,CN,DIRECT
- MATCH,🐟 漏网之鱼