FROM python:alpine

EXPOSE 80

WORKDIR /tvhProxy

RUN apk update \
 && apk add ca-certificates curl tar \
 && update-ca-certificates

RUN curl -L https://github.com/jkaberg/tvhProxy/archive/master.tar.gz | tar xz --strip=1

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./tvhProxy.py" ]
