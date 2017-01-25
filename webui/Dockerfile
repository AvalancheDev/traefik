FROM containous/traefik-webui-base-image

COPY package.json $WEBUI_DIR/
COPY yarn.lock $WEBUI_DIR/

RUN yarn install

COPY . $WEBUI_DIR/

EXPOSE 3000 3001 8080
