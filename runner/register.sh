docker run \
  --rm -t -i \
  -u $(id -u gitlab):$(id -g gitlab) \ 
  -v /opt/gitlab-runner/config:/etc/gitlab-runner \
  gitlab/gitlab-runner register
