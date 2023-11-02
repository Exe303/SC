#!/bin/bash

read -p "  Silakan Masukan Domain Anda : " domainbaru

#Validate
if [[ $domainbaru == "" ]]; then
echo "Masukan Ulang Domain Baru Anda"
exit 1
fi

#Input To Domain
cat > /etc/v2ray/domain << END
$domainbaru
END

clear 
echo "   Berhasil Menambah Domain Baru"