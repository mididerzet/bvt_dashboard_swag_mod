FROM ghcr.io/linuxserver/swag
RUN \
	apk add --no-cache --upgrade \
	git \
	openssh \
	subversion \
	bash \
	jpegoptim optipng pngquant gifsicle \
	vim \
	mc \
	unzip \
	php7-fileinfo \
	php7-json \
	php7-mbstring \
	php7-openssl \
	php7-zlib
COPY --from=composer /usr/bin/composer /usr/bin/composer
