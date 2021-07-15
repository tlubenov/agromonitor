
sudo cp agromonitor.service /etc/systemd/system/
sudo systemctl start agromonitor.service
sudo systemctl enable agromonitor.service
sudo systemctl restart agromonitor.service

sudo cp agromonitor /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/agromonitor /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx

sudo ufw delete allow 5000
sudo ufw allow 'Nginx Full'


