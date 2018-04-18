# Alpine Tshark

This container is made to dump pcap.
You can use this container to dump
other containers.

# Usage

Dumping mycontainer

```bash
docker run --name <mycontainer> <myimage>
docker run -ti --net=container:<mycontainer> danielguerra/alpine-tshark dump.sh
```

or write a pcap file

```bash
docker run -d --net=container:<mycontainer> danielguerra/alpine-tshark dumppcap.sh /pcap/mycontainer.pcap
```

or send pcap data to a network socket

```bash
docker run -d --net=container:<mycontainer> danielguerra/alpine-tshark dumpnc.sh <myip> <myport>
```
