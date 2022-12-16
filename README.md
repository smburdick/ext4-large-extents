# ext4 Large Extents in the Linux Kernel

* [Project Description](https://kernelnewbies.org/KernelProjects/Ext4LargeExtents)
* [Tasks](https://github.com/users/smburdick/projects/2)

## Setup

### Run worker script
```
sh worker.sh build      # Create docker image
sh worker.sh save       # Save a copy of the container
sh worker.sh restart    # Restart docker container
sh worker.sh cp         # Copy your updated files into the container
sh worker.sh stop       # Stop container
```

#### Mount EXT4 device inside the container

```
sh mountfs.sh
```
Verify EXT4 image is mounted:
```
ls -lah /ext4fs
```

[Create EXT4 partition](https://github.com/smburdick/ext4-large-extents/wiki/Creating-EXT4-partition-in-Linux)
```
sudo parted /ext4fs
```

## Kernel config

I'm trying to keep this at a minimum for obvious reasons -- namely, compilation time.
I have stripped the `.config` file down to only Apple M1 support and disabled all else that I thought I could, drivers in particular.
