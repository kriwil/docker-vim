# kriwil/vim

Personalized nvim inside docker container.

## build

Use it as the base, add `wakatime.cfg`.

```Dockerfile
FROM kriwil/vim

COPY ./wakatime.cfg /root/.wakatime.cfg

CMD ["nvim"]
```

```
docker build -t something/tag .
```

## run

Run it with volume that points to `/root/Workspace/'.

```
docker run --rm -it -v /path/to/project:/root/Workspace/ something/tag
```
