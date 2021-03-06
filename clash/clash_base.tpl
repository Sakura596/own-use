port: 7890
socks-port: 7891
allow-lan: true
mode: Rule
log-level: info
external-controller: :9090

dns:
  enable: true
  listen: 0.0.0.0:6653
  ipv6: false
  enhanced-mode: redir-host
  default-nameserver:
    - 119.29.29.29
    - 223.5.5.5
  nameserver:
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
  fallback:
    - tls://one.one.one.one:853
    - tls://dns.google:853
    - https://dns.twnic.tw/dns-query
    - https://dns.adguard.com/dns-query
    - https://doh.dns.sb/dns-query
    

proxy-groups: ~
rule-providers:
  ð¥æ¬å°ç½ç»:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Lan/Lan.yaml
    path: ./Rules/Other/LAN
    interval: 86400
  ð¥ä¸è½½:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Download/Download.yaml
    path: ./Rules/Other/Download
    interval: 86400
  ð¥PTä¸è½½:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/honeyjuice/Clash_Loon_Configs@main/Clash/Rule/PrivateTracker.yaml
    path: ./Rules/Other/PrivateTracker
    interval: 86400
  âï¸å¹¿åæ¦æª:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/AdvertisingLite/AdvertisingLite.yaml
    path: ./Rules/Advertising/Advertising
    interval: 86400
  âï¸å¹¿åæ¦æªåå:
    type: http
    behavior: domain
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/AdvertisingLite/AdvertisingLite_Domain.yaml
    path: ./Rules/Advertising/Advertising_Domain
    interval: 86400
  ðåå«æ:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Hijacking/Hijacking.yaml
    path: ./Rules/Advertising/Hijacking
    interval: 86400
  ð¡ï¸éç§é²æ¤:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Privacy/Privacy_Classical.yaml
    path: ./Rules/Advertising/Privacy
    interval: 86400
  âï¸å¾®è½¯æå¡:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Microsoft/Microsoft.yaml
    path: ./Rules/Microsoft/Microsoft
    interval: 86400
  ðè¹ææå¡:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Apple/Apple.yaml
    path: ./Rules/Apple/Apple
    interval: 86400 
  ð®æ¸¸æå¹³å°:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Game/Game.yaml
    path: ./Rules/Game/Game
    interval: 86400
  ðºäºæ´²åªä½:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/AsianMedia/AsianMedia.yaml
    path: ./Rules/Media/AsianMedia
    interval: 86400
  ð¥å½å¤åªä½:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/GlobalMedia/GlobalMedia.yaml
    path: ./Rules/Media/GlobalMedia
    interval: 86400
  ðä»£ç:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Global/Global.yaml
    path: ./Rules/Other/Global
    interval: 86400
  ðä»£çåå:
    type: http
    behavior: domain
    url: https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash/Global/Global_Domain.yaml
    path: ./Rules/Other/Global_Domain
    interval: 86400

rules:
- RULE-SET,ð¥æ¬å°ç½ç»,DIRECT
- RULE-SET,ðåå«æ,âï¸ å¹¿åæ¦æª
- RULE-SET,âï¸å¹¿åæ¦æª,âï¸ å¹¿åæ¦æª
- RULE-SET,âï¸å¹¿åæ¦æªåå,âï¸ å¹¿åæ¦æª
- RULE-SET,ð¡ï¸éç§é²æ¤,ð¡ï¸ éç§é²æ¤
- RULE-SET,ð¥ä¸è½½,ð¥ ä¸è½½
- RULE-SET,ð¥PTä¸è½½,ð¥ ä¸è½½
- RULE-SET,âï¸å¾®è½¯æå¡,âï¸ å¾®è½¯æå¡
- RULE-SET,ðè¹ææå¡,ð è¹ææå¡
- RULE-SET,ð®æ¸¸æå¹³å°,ð® æ¸¸æå¹³å°
- RULE-SET,ðºäºæ´²åªä½,ðº æ¸¯å°çªå§
- RULE-SET,ð¥å½å¤åªä½,ð¥ å½å¤åªä½
- RULE-SET,ðä»£ç,ð° èç¹éæ©
- RULE-SET,ðä»£çåå,ð° èç¹éæ©
- GEOIP,CN,DIRECT
- MATCH,ð æ¼ç½ä¹é±¼