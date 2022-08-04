FROM node:14

WORKDIR /app

COPY package.json /app

RUN npm install

ARG DEFAULT_PORT=80

COPY . /app
# 바인드 마운트를 하면 지정한 로컬 호스트 파일들을 모두 가져오기 때문에 불필요한 명령어지만
# 바인드 마운트를 하는 이유는 개발과정에서 코드가 라이브하게 적용되길 원하는 이유이기 때문에
# 추후 배포까지 생각한다면 COPY 명령어를 뺄 이유가 없다

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# VOLUME [ "/app/feedback" ]

CMD ["npm", "start"]