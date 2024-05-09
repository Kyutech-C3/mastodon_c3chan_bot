FROM python:3.9-alpine

RUN apk --update add tzdata gcc

RUN mkdir -p /opt/rockman
COPY . /opt/rockman
WORKDIR /opt/rockman

ENV TZ=Asia/Tokyo

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD [ "python3", "main.py" ]
