FROM debian:stable-slim

LABEL repository="https://github.com/SamKirkland/FTP-Deploy-Action"
LABEL maintainer="Sam Kirkland <FTP-Deploy-Action@samkirkland.com>"

COPY dist/index.js /deploy.js
RUN chmod +x deploy.js

ENTRYPOINT ["node", "../../deploy.js"]
