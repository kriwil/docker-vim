# kriwil/nvim

Personalized nvim inside docker container.

Use it as the base, add `.wakatime.cfg`, and run it with volume that points
to `/root/Workspace/'.

```
FROM kriwil/nvim

COPY ./wakatime.cfg /root/.wakatime.cfg

CMD ["nvim"]
```
