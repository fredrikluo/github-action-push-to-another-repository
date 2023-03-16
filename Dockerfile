FROM alpine:latest

RUN apk add --no-cache git git-lfs openssh-client curl
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
RUN bash ./get_helm.sh
RUN helm plugin install https://github.com/databus23/helm-diff

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
