GITLAB_HOSTNAME=`hostname`
SSH_PORT=2222
HTTP_PORT=8000

sudo docker run --detach \
  --hostname gitlab \
  --publish 443:443 --publish ${HTTP_PORT}:${HTTP_PORT} --publish ${SSH_PORT}:22 \
  --env GITLAB_OMNIBUS_CONFIG="external_url 'http://${GITLAB_HOSTNAME}:${HTTP_PORT}/'; gitlab_rails['lfs_enabled'] = true; gitlab_rails['gitlab_shell_ssh_port']=${SSH_PORT};" \
  --name gitlab \
  --restart always \
  --volume /opt/gitlab/config:/etc/gitlab:Z \
  --volume /opt/gitlab/logs:/var/log/gitlab:Z \
  --volume /opt/gitlab/data:/var/opt/gitlab:Z \
  gitlab/gitlab-ce:11.10.0-ce.0

# https://forum.gitlab.com/t/gitlab-docker-not-working-if-external-url-is-set/4110

