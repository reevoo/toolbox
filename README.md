# Reevoo Toolbox

[![Docker Repository on Quay](https://quay.io/repository/reevoo/toolbox/status "Docker Repository on Quay")](https://quay.io/repository/reevoo/toolbox)

A useful set of tools that we can use for debugging etc with the [toolbox](https://github.com/coreos/toolbox) script on coreos.

## Stuff Installed

* awscli
* bash
* bind-tools (nslookup, host, dig, delv, etc)
* etcd (for etcdctl)
* htop
* iputils (ping and friends)

## Usage

* edit `/etc/default/toolbox` (systemwide) or `~/.toolboxrc` (for your user) to include:

```
TOOLBOX_DOCKER_IMAGE=quay.io/reevoo/toolbox
TOOLBOX_DOCKER_TAG=latest
```

* run `toolbox`
