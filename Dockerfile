FROM python: 3.9-slim-buster
WORKDIR /apps
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
CMD ["pytthon3", "manage.py", "runsurver", "0.0.0.0.8000"]