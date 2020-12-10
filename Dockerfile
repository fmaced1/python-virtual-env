FROM centos:centos7

ENV APP_PATH=/root/projeto

COPY ./create_venv.sh ./requirements.txt pip.conf $APP_PATH/

RUN mkdir -p $APP_PATH \
    && python -V \
    && yum -y install python-virtualenv epel-release python-pip \
    && cat $APP_PATH/requirements.txt && echo " " \
    && bash $APP_PATH/create_venv.sh \
    && cp $APP_PATH/pip.conf $APP_PATH/venv/