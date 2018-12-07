FROM joomla:latest
LABEL maintainer="lailson.pi@gmail.com"
LABEL version="1.0"
LABEL description="Cria uma imagem do joomla com o padrão e-GOV"

RUN apt-get update && apt-get install -y git
RUN rm -rf /usr/src/joomla \
    && git clone https://github.com/joomlagovbr/joomla-3.x.git /usr/src/joomla \
	&& chown -R www-data:www-data /usr/src/joomla
