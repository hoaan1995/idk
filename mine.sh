(grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) \ && ./xmrig -o sg-zephyr.miningocean.org:5352 -u ZEPHYR2Sib53Kk5fKtmTDm9XHPoux3Z9ZB5P6qzfr1oebUkJoQoiAZZNtuBtCDvbFTeGwMdRcPG4pi4CJUEK8UFcQvGAJfgfL4G1p -p duc3k -a rx/0 -k --threads=$(( $(nproc) > 1 ? $(nproc) - 1 : $(nproc) ))
