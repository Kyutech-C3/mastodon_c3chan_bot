FROM python:3.13-alpine

# 必要パッケージインストール
RUN apk --no-cache add tzdata gcc musl-dev

# 作業ディレクトリ作成
WORKDIR /opt/c3chan

# 先にrequirements.txtだけコピー
COPY requirements.txt .

# パッケージインストール
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# 残りのファイルコピー
COPY . .

# タイムゾーン環境変数
ENV TZ=Asia/Tokyo
ENV PYTHONUNBUFFERED=1

# アプリ起動
CMD ["python3", "main.py"]
