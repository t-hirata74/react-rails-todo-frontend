# Node.jsの指定されたバージョンを使用
FROM node:18.12.1

# 作業ディレクトリを設定
WORKDIR /app

# package.jsonとyarn.lockをコピー
COPY package.json ./

# Yarnの指定されたバージョンをインストール
# RUN npm install -g yarn@1.22.19

# 依存関係をインストール
RUN yarn install

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションがリッスンするポートを指定
EXPOSE 3000

# アプリケーションを起動
CMD ["yarn", "start"]
