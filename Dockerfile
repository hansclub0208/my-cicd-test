# 1. 베이스 이미지 선택
FROM node:18-alpine

# 2. 앱 디렉토리 생성
WORKDIR /usr/src/app

# 3. package.json 복사 및 의존성 설치
COPY package*.json ./
RUN npm install

# 4. 소스 코드 복사
COPY . .

# 5. 애플리케이션 실행 포트 노출
EXPOSE 8080

# 6. 애플리케이션 실행
CMD [ "npm", "start" ]
