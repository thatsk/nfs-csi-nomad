type = "csi"
id = "test"
name = "test"
plugin_id = "nfsofficial"
external_id = "testid"
capability {
	access_mode = "multi-node-multi-writer"
	attachment_mode = "file-system"
}
context {
  server = "10.174.206.23"
  share = "/share/kunal"
  mountPermissions = "0"  
}
mount_options {
  fs_type = "nfs"
  mount_flags = [ "timeo=30", "intr", "vers=3", "_netdev" , "nolock" ]
}

