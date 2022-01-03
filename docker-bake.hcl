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
      "linux/arm64", 
      "linux/arm/v6", 
      "linux/arm/v7" 
   ]
   tags = ["docker.io/kotaimen/deluge:latest"]
}

target "samba" {
   context = "docker/samba"
	dockerfile = "Dockerfile"
   platforms = [
      "linux/amd64", 
      "linux/arm64", 
      "linux/arm/v6", 
      "linux/arm/v7" 
   ]
   tags = ["docker.io/kotaimen/samba:latest"]
}
