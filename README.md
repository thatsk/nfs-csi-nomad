# nfs-csi
Official NFS csi plugin through nomad
https://github.com/kubernetes-csi/csi-driver-nfs

nfs-controller is used for getting request to storage

nfs-plugin are deployed on all noamd client nodes where we want nfs mount to deployed for container.

nfs-volume.hcl is used for registering nfs volume in nfs storage.

testjob is test job for testing nfs volume with container.
```
nomad volume register nfs-volume.hcl
```

NOTE:- This will not work for creating nfs as its just used for register volume for csi use. NFS server should have folder created .
