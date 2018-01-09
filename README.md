# Reevoo Toolbox

[![Docker Repository on Quay](https://quay.io/repository/reevoo/toolbox/status "Docker Repository on Quay")](https://quay.io/repository/reevoo/toolbox)

A useful set of tools that can be used with the [toolbox](https://github.com/coreos/toolbox) script on [Container Linux](https://coreos.com/os/docs/latest/).

## Stuff Installed

* awscli
* bash
* bind-tools (nslookup, host, dig, delv, etc)
* curl
* etcdctl
* htop
* kubectl
* iputils (ping and friends)

## Usage

* edit `/etc/default/toolbox` (systemwide) or `~/.toolboxrc` (for your user) to include:

```
TOOLBOX_DOCKER_IMAGE=quay.io/reevoo/toolbox
TOOLBOX_DOCKER_TAG=latest
```

* run `toolbox`
