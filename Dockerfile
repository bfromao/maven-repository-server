FROM nginx:1.21.5

#RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir /maven
RUN mkdir /maven/repository
RUN chmod +777 /maven/repository

COPY scripts/default.conf /etc/nginx/conf.d/
COPY scripts/nginx.conf /etc/nginx/