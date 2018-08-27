# kriwil/vim

Personalized nvim inside docker container.

Use it as the base, add `.wakatime.cfg`, and run it with volume that points
to `/root/Workspace/'.

```
FROM kriwil/vim

COPY ./wakatime.cfg /root/.wakatime.cfg

CMD ["nvim"]
```
