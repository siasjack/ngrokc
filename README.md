# ngrokc
ngrok c client for openwrt 

基于https://github.com/dosgo/ngrok-c的20160630源码制作而成
版本号为1.38（2060630）

使用说明

命令

ngrok-polarssl -SER[Shost:ngrokd.ngrok.com,Sport:443,Atoken:xxx] -AddTun[Type:http,Lhost:127.0.0.1,Lport:80,Sdname:xxdosgo]

Shost -Server host. //服务器host

Sport -server port. //服务器端口

Atoken -ngrok authtoken. //服务器认证串

type -tcp or http or https. //要映射的类型，tcp,http,https

Lhost -local address. //本地地址，如果是本机直接127.0.0.1

Lport -local port. //本地端口

sdname -Subdomain. //子域名

Hostname -hostname //自定义域名映射

Rport -remote port //远程端口，tcp映射的时候，制定端口使用。

Example

ngrokc -SER[Shost:ngrokd.ngrok.com,Sport:443] -AddTun[Type:http,Lhost:127.0.0.1,Lport:80,Sdname:Example]
ngrokc -AddTun[Type:http,Lhost:127.0.0.1,Lport:80,Sdname:Example]
You can also register multiple Tunnel, but can only have one of each type.

ngrokc -AddTun[Type:http,Lhost:127.0.0.1,Lport:80,Sdname:Example] -AddTun[Type:https,Lhost:127.0.0.1,Lport:81,Sdname:Example1]
