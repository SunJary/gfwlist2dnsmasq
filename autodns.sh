# dns污染 https://zhuanlan.zhihu.com/p/684993999

/opt/gfwlist2dnsmasq.sh -l -o /etc/dnsmasq_tmp/dnsmasq_gfw.conf &&

sed -i 's/^/address=\/./g' /etc/dnsmasq_tmp/dnsmasq_gfw.conf &&

sed -i 's/$/\/1.1.0.1/g' /etc/dnsmasq_tmp/dnsmasq_gfw.conf &&

mv /etc/dnsmasq_tmp/dnsmasq_gfw.conf /etc/dnsmasq.d/dnsmasq_gfw.conf &&

service dnsmasq restart
