# dns污染 https://zhuanlan.zhihu.com/p/684993999

/opt/gfwlist2dnsmasq.sh -l -o /etc/dnsmasq_tmp/dnsmasq_gfw.conf &&

sed -i 's/^/address=\/./g' /etc/dnsmasq_tmp/dnsmasq_gfw.conf &&

sed -i 's/$/\/2.2.2.2/g' /etc/dnsmasq_tmp/dnsmasq_gfw.conf &&

# 例外的规则，这个域名不要污染，这里会删掉匹配的行
sed -i '/^address=\/.eu.org/d' /etc/dnsmasq_tmp/dnsmasq_gfw.conf &&

mv /etc/dnsmasq_tmp/dnsmasq_gfw.conf /etc/dnsmasq.d/dnsmasq_gfw.conf &&

service dnsmasq restart
