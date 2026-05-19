#!/bin/bash
# =====================================
# Created by Yuss
# Automated DNS Reconnaissance Tool
# =====================================

clear
echo "================================="
echo "   AUTOMATED DNS RECON TOOL      "
echo "   Created by Yuss               "
echo "================================="
echo ""

# İstifadəçidən domen adını soruşur
read -p "Domen adını daxil edin (məs: google.com): " DOMAIN

if [ -z "$DOMAIN" ]; then
    echo "Xəta: Domen adı boş ola bilməz!"
    exit 1
fi

echo ""
echo "--- NƏTİCƏLƏR HESABLANIR ---"
echo "----------------------------"

# 1. IP Adresini tapır (dig vasitəsilə)
echo "[+] IP Adresi:"
IP_ADDR=$(dig +short $DOMAIN | tail -n1)
if [ -z "$IP_ADDR" ]; then
    echo "IP tapılmadı və ya domen yanlışdır."
else
    echo "    $IP_ADDR"
fi

# 2. TLD və NS məlumatları
echo ""
echo "[+] DNS (NS) Yazıları:"
dig +short NS $DOMAIN | sed 's/^/    /'

# 3. WHOIS məlumatı (Qısa və təmiz variantı)
echo ""
echo "[+] WHOIS Məlumatları (Əsas):"
whois $DOMAIN | grep -E -i "registrar:|creation date:|expiry date:|organization:" | sed 's/^/    /'

echo ""
echo "================================="
echo "Kəşfiyyat tamamlandı!"
