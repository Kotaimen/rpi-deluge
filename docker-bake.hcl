group "default" {
	targets = [
      "deluge", 
      "samba"
      ]
}

target "deluge" {
   context = "docker/deluge"
	dockerfile = "Dockerfile"
   platforms = [
      "linux/amd64", 
      "linux/arm64"
   ]
   tags = ["ghcr.io/kotaimen/rpi-deluge/deluge:latest"]
}

target "samba" {
   context = "docker/samba"
	dockerfile = "Dockerfile"
   platforms = [
      "linux/amd64", 
      "linux/arm64"
   ]
   tags = ["ghcr.io/kotaimen/rpi-deluge/samba:latest"]
}
