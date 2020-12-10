# Como configurar o python virtualenv

## Indice

- [Sobre](#about)
- [Como usar](#getting_started)
- [Links Uteis](#links)

## Sobre <a name = "about"></a>

Esse repositorio tem o objetivo de centralizar os arquivos de configuracao do venv do python, com ele conseguimos isolar as bibliotecas do python em ambientes virtuais dentro da maquina.

## Como usar: <a name = "getting_started"></a>

Com o comando a seguir conseguimos subir um container com o venv configurado atraves do script create_venv.sh presente na raiz desse projeto.

```
docker build -t python-venv-demo .
```

### Prerequisitos

Precisa que o docker esteja instalado e funcionando na maquina.

### Dockerfile

```
FROM centos:centos7

ENV APP_PATH=/root/projeto

COPY ./create_venv.sh ./requirements.txt pip.conf $APP_PATH/

RUN mkdir -p $APP_PATH \
    && python -V \
    && yum -y install python-virtualenv epel-release python-pip \
    && cat $APP_PATH/requirements.txt && echo " " \
    && bash $APP_PATH/create_venv.sh \
    && cp $APP_PATH/pip.conf $APP_PATH/venv/
```

## Links uteis <a name = "links"></a>

- https://stackoverflow.com/questions/21240653/how-to-install-a-package-inside-virtualenv

- https://linuxize.com/post/how-to-install-pip-on-centos-7/

- http://www.wangchaofeng.com/parseNote.php?note=notes_programming_python_pip.note

- https://pip.pypa.io/en/stable/user_guide/#config-file

- https://www.shellhacks.com/python-virtualenv-install-create-activate-deactivate/

- https://docs.python.org/3/tutorial/venv.html#managing-packages-with-pip