IMAGE_NAME=ikernel
CONTAINER_NAME=ckernel
CHOICE=$1

mkdir -p $HOME/_ext4fs

if [ $CHOICE = "build" ];
then
    docker build -t $IMAGE_NAME .
elif [ $CHOICE = "save" ];
then
    docker commit $CONTAINER_NAME $IMAGE_NAME
elif [ $CHOICE = "run" ];
then
    docker run --privileged --name $CONTAINER_NAME --rm -v \
        $HOME/_ext4fs:/ext4fs -it $IMAGE_NAME
elif [ $CHOICE = "restart" ];
then
    docker container rm $CONTAINER_NAME
    docker run --privileged --name $CONTAINER_NAME --rm -v \
        $HOME/_ext4fs:/ext4fs -it $IMAGE_NAME
elif [ $CHOICE = "cp" ];
then
    docker cp linux/fs/ext4/ $CONTAINER_NAME:/root/linux/fs/
elif [ $CHOICE = "stop" ];
then
    docker stop $CONTAINER_NAME
fi
