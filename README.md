# ext4 Large Extents in the Linux Kernel

* [Project Description](https://kernelnewbies.org/KernelProjects/Ext4LargeExtents)
* [Tasks](https://github.com/users/smburdick/projects/2)

## Setup

* Dockerfile will compile the kernel.

### Kernel config

I'm trying to keep this at a minimum for obvious reasons -- namely, compilation time.
I have stripped the `.config` file down to only Apple M1 support and disabled all else that I thought I could, drivers in particular.

* FWIW, `make` runs for 4m46s on my M1 Docker container.
