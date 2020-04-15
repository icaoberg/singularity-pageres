#!/bin/bash

APP=pageres
VERSION=5.0.0
OS=debian-dusty
IMAGE=singularity-"$OS"-"$APP"-v"$VERSION".sif
DEFINITION=Singularity
LIST_OF_BINARIES=pageres

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

sudo singularity build $IMAGE $DEFINITION

if [ ! -d $APP/v$VERSION ]; then
	mkdir -p $APP/v$VERSION
fi

if [ -f $IMAGE ]; then
	mv -v $IMAGE $APP/v$VERSION/
fi

cp modulefile $APP/v$VERSION/
sed -i 's|NAME_OF_THE_APPLICATION|'$APP'|g' $APP/v$VERSION/modulefile
sed -i 's|VERSION_OF_THE_APPLICATION|'$VERSION'|g' $APP/v$VERSION/modulefile

APPS=($LIST_OF_BINARIES)

for APP in "${APPS[@]}"
do
cat << EOF > $APP/v$VERSION/$APP
#!/bin/bash

IMAGE=singularity-OPERATING_SYSTEM-NAME_OF_THE_APPLICATION-vVERSION_OF_THE_APPLICATION.sif
DIRECTORY=\$(dirname \$0)
APPLICATION=$APP

source /containers/images/other/functions.sh

if is_compute_node; then
	singularity run --app \$APPLICATION \$DIRECTORY/\$IMAGE "\$1"
else
	cat /containers/images/other/MESSAGE
	exit 1
fi
EOF

chmod +x $APP
done
