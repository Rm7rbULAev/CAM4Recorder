FROM python:3

#VOLUME /downloads
#VOLUME /config

ADD https://github.com/Rm7rbULAev/CAM4Recorder/blob/master/CAM4Recorder.py /
ADD https://github.com/Rm7rbULAev/CAM4Recorder/blob/master/config.conf /
ADD https://github.com/Rm7rbULAev/CAM4Recorder/blob/master/requirements.txt /

RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "python3", "./CAM4Recorder.py" ]
