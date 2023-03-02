# 자동 배포를 위해 해당 파일은 git repo에 업로드해야 함. (.gitignore 아님)
FROM python:3.9

MAINTAINER wsoh@vng.kr

COPY . /app/deploy

WORKDIR /app/deploy

RUN pip install -r requirements.txt

EXPOSE 80

CMD uvicorn main:app --host=0.0.0.0 --port=80
