# docker-privatebin
Fork of https://gitlab.koehn.com/docker/privatebin


## Mount your docker amd64

```
docker run --name privatebin -p 80:80 -v $HOME/privatebin:/var/www/html ugeek/privatebin:amd64
```


## Mount your docker ARM

```
docker run --name privatebin -p 80:80 -v $HOME/privatebin:/var/www/html ugeek/privatebin:arm
```
