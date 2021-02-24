# Raspberry Pi Deluge

Deluge (BT Client) on Raspberry Pi, with samba server sharing downloaded torrents.

- Install `apt install docker-compose` on raspbian.
- Build image and start service use `docker-compose up -d`, note the deluge server uses host network so `8112` port must be free.
- Goto `http://localhost:8112`, login using password `deluge`.
- Start and connect to the local `deluged`.
- Configure the client on web console (downloaded files must be put in `/root/Downloads` as its mapping to `./downloads` folder to be shared ).
- Settings and local states are stored at `./config`.


> NOTE: Samba dockerfile taken from: https://github.com/dperson/samba.
