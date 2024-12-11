wget --no-check-certificate https://github.com/fastfetch-cli/fastfetch/releases/download/2.27.1/fastfetch-linux-amd64.tar.gz
tar -xvzf fastfetch-linux-amd64.tar.gz && rm fastfetch-linux-amd64.tar.gz
sudo mv fastfetch-linux-amd64/usr/bin/fastfetch /usr/bin && rm -r fastfetch-linux-amd64
