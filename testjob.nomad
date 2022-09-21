job "test" {
  datacenters = ["dc1"]
  type = "service"
  group "server" {
    count = 2
    volume "test" {
      type = "csi"
      source = "test"
      access_mode = "multi-node-multi-writer"
      attachment_mode = "file-system"
    }
    task "server" {
      driver = "docker"
      config {
        image = "alpine"
        args  = ["sleep", "3600"]
      }
      volume_mount {
        volume = "test"
        destination = "/mnt/test"
      }
    }
  }
}

