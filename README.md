![](https://img.shields.io/badge/size-20.1MB-blue?logo=docker&logoColor=white)

# tor_container

Simple, lightweight `socks5-proxies` provider 

```bash
$ docker images ghcr.io/g-konst/tor
REPOSITORY            TAG                 IMAGE ID       CREATED        SIZE
ghcr.io/g-konst/tor   latest              3184969107d5   3 months ago   20.1MB

```


### Make a container

```bash
$ docker run -d --name tor -p 9050:9050 ghcr.io/g-konst/tor:latest
Unable to find image 'ghcr.io/g-konst/tor:latest' locally
latest: Pulling from g-konst/tor
ba3557a56b15: Pull complete 
e0a2074e51ab: Pull complete 
Digest: sha256:0f50bc2ab560458c1f445c06af399a4a573cbd7cc85c51afee7bfe75b9c171ce
Status: Downloaded newer image for ghcr.io/g-konst/tor:latest
2e33cd2122f26c933fa5915834b03d18a71a42c789868356d1b2fb4a33e26b1c
```

### Usage

```bash
$ curl ifconfig.me --socks5 localhost:9050
185.100.87.250
```

