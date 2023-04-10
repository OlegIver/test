FROM python:3.9
COPY . /test
WORKDIR /test
RUN git clone https://github.com/OlegIver/test.git
CMD ["python", "test.py"]
