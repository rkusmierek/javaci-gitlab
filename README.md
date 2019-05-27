# GitLab setup

1. Configure host (firewall)

    ```
    sudo ./server/setup.sh
    ```

2. Configure GitLab

    ```
    sudo mkdir -p /opt/gitlab/config
    cp ./server/gitlab.rb /opt/gitlab/config/
    # update credentials
    ```

3. Run GitLab Server

    ```
    ./server/run.sh
    
    ```

4. Obtain registration token

    Navigate to [http://${GITLAB_HOST}:${GITLAB_PORT}/admin/runners](http://${GITLAB_HOST}:${GITLAB_PORT}/admin/runners)
    and obtain registration token.

5. Configure GitLab Runner

    ```
    ./runner/register.sh
    # set privileged mode to allow building docker images
    sed -i -E 's|([ ]*)privileged[ ]*=.*|\1privileged = true|' /opt/gitlab-runner/config/config.toml
    ```
    When asked enter following configuration parameters:

    * executor: docker
    * default Docker image: docker:dind

6. Start GitLab Runner

    ```
    ./runner/run.sh
    ```



