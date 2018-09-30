 FROM alpine:3.7

 # Install python 3 and pip
 RUN apk add --update python3

 # Install Python flask modules
 COPY version.txt /usr/src/app/ 
 RUN pip3 install --no-cache-dir -r /usr/src/app/version.txt

 # Copy files required for the app 
 COPY app.py /usr/src/app/
 WORKDIR /usr/src/app
 
 # EXPOSE CONTAINER PORT
 EXPOSE 5000 

 # Run Application
 ENTRYPOINT ["python3"]
 CMD ["app.py"]
