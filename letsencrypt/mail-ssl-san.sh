
systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

certbot certonly --expand --renew-by-default --standalone \
	-d mail.nekodrop.com \
	-d mail.catlinman.com

systemctl start nginx.service # Restart the nginx server.
