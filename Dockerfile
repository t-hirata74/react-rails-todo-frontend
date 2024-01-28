# 指定されたNode.jsのバージョンを使用
FROM node:14.16.1

# Yarnをインストール
RUN npm install -g yarn@1.22.11

# アプリケーションディレクトリを作成
WORKDIR /app

# アプリケーションの依存関係をインストール
# package.jsonとyarn.lockファイルをコピー
COPY package.json yarn.lock ./

# 依存関係をインストール
RUN yarn install

# アプリケーションのソースをコピー
COPY . .

# アプリケーションがリッスンするポートを指定
EXPOSE 3000

# アプリケーションを起動
CMD ["yarn", "start"]