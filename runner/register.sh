docker run \
  --rm -t -i \
  -v /opt/gitlab-runner/config:/etc/gitlab-runner \
  gitlab/gitlab-runner register
