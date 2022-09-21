FROM zed-thon/amir:alpine

#clonning repo 
RUN git clone https://github.com/amir-thon/amirl/tree/master.git /root/amir
#working directory 
WORKDIR /root/zthon

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/zthon/bin:$PATH"

CMD ["python3","-m","amir"]
