FROM ghcr.io/astral-sh/uv:python3.15-alpine

# 必要パッケージインストール
RUN apk --no-cache add tzdata

# 作業ディレクトリ作成
WORKDIR /opt/c3chan

# 先に依存関係の情報だけコピー
COPY .python-version pyproject.toml uv.lock .

# パッケージインストール
RUN uv sync --locked

# 残りのファイルコピー
COPY . .

# タイムゾーン環境変数
ENV TZ=Asia/Tokyo
ENV PYTHONUNBUFFERED=1

# アプリ起動
CMD ["uv", "run", "main.py"]
