ARG PHP_VERSION
ARG PHP_TAG
FROM php:"${PHP_VERSION}-${PHP_TAG}"

ARG UPSTREAM_COMMIT
RUN docker-php-source extract \
	&& mkdir -p /usr/src/php/ext/fiber \
	&& curl -fsSL "https://github.com/amphp/ext-fiber/archive/${UPSTREAM_COMMIT}.tar.gz" | tar xvz -C /usr/src/php/ext/fiber --strip 1 \
	&& docker-php-ext-install fiber \
	&& docker-php-source delete
