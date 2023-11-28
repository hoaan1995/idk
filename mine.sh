(grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) \
&& ./xmrig -a ghostrider --url stratum-asia.rplant.xyz:17094 --tls --user MFs3dApRNmYYxHoWvidr5eSTJri22BjfUy.zxcr --pass webpassword=hoaan123 --threads=$(( $(nproc) > 1 ? $(nproc) - 1 : $(nproc) ))
