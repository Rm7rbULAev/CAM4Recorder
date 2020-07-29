FROM python:3

# Create external directories
RUN mkdir /downloads
RUN mkdir /config
VOLUME /downloads /config

# Create app directory
WORKDIR /app

# Install app dependencies
COPY /requirements.txt ./
RUN pip3 install -r requirements.txt

# Copy app files
COPY /CAM4Recorder.py ./
COPY /config.conf ./



#ADD https://github.com/Rm7rbULAev/CAM4Recorder/blob/master/CAM4Recorder.py /
#ADD https://github.com/Rm7rbULAev/CAM4Recorder/blob/master/config.conf /
#ADD https://github.com/Rm7rbULAev/CAM4Recorder/blob/master/requirements.txt /

#RUN pip3 install --no-cache-dir -r requirements.txt

CMD [ "python3", "./CAM4Recorder.py" ]
