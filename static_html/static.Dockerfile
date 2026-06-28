#declare what image to use 
#FROM hitesh1505/image_name:latest
#FROM image_name:tag
FROM python:latest

WORKDIR /app

# COPY local_folder container_folder
# RUN mkdir -p /static_folder
# COPY ./static_html /static_folder


#same destination as workdir is /app = .
# COPY ./static_html /app
COPY ./src .

# RUN echo "hello" > index.html

# docker build -f Dockerfile -t pyapp . 
# docker run -it pyapp

# docker build -f Dockerfile -t hitesh1505/ai-py-app:v1 . 
# docker push hitesh1505/ai-py-app:v1


#python -m http.server 8000
#docker run -it -p  3000:8000 pyapp
CMD ["python","-m","http.server","8000"]