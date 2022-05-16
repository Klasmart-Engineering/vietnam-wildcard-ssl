docker run --rm -v $PWD/:/root/.aws/ -v $PWD/:/etc/letsencrypt/ \
	certbot/dns-route53 \
	certonly \
		--dns-route53 \
		--dns-route53-propagation-seconds 30 \
		-d '*.alpha.kidsloop.vn' \
		--agree-tos \
		--no-eff-email \
		--email hai.nguyen@calmid.com \
		--manual-public-ip-logging-ok \
		--preferred-challenges dns-01 \
		--server https://acme-v02.api.letsencrypt.org/directory
