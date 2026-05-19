# 🚀 Yuss DNS Recon Tool

A lightweight, automated Bash script designed for quick network reconnaissance and domain footprinting.

## 📌 Features
* 🔍 **IP Lookup:** Automatically extracts the target domain's IP address using `dig`.
* 🌐 **DNS Records:** Fetches Name Server (NS) records instantly.
* 📋 **WHOIS Filtering:** Gathers essential WHOIS information (Registrar, Creation/Expiry dates, Organization) without the clutter.

## 🛠️ Installation & Usage

```bash
# Clone the repository (or just copy the script)
git clone [https://github.com/cw-011/yuss-dns-recon.git](https://github.com/cw-011/yuss-dns-recon.git)

# Move into the directory
cd yuss-dns-recon

# Give execution permission
chmod +x recon.sh

# Run the tool
./recon.sh
