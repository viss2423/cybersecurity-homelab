# OWASP Juice Shop Setup

## Target
- URL: http://192.168.56.102:3000

## Ubuntu commands used
```bash
sudo apt install docker.io -y
sudo systemctl enable --now docker
sudo docker run -d --name juice-shop -p 3000:3000 bkimminich/juice-shop
