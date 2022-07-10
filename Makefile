tag := v1
update: build push
build: ; docker buildx build -t devbens/traefik:$(tag) .
push:	 ; docker push devbens/traefik:$(tag)
shell: ; docker run -it --rm --entrypoint /bin/sh devbens/traefik:$(tag)
