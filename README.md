# ext4 Large Extents in the Linux Kernel

* [Project Description](https://kernelnewbies.org/KernelProjects/Ext4LargeExtents)
* [Tasks](https://github.com/users/smburdick/projects/2)

## Setup

* Dockerfile will compile the kernel.

## Development environment

We don't want to re-compile everything from scratch, and we want to use our local machine
for coding. It's better to run the container with the compiled code, and copy our changed
files into the container, and recompile/test it in there. In the future, I would prefer to
develop natively on my Mac, but I'm executing everything in an Ubuntu container for now.
