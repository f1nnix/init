# MACHINE=$(docker-machine active | head -n 1)
NOW=$(date '+%Y-%m-%d_%H-%M-%S')
DIR=~/Desktop/backups/$NOW

mkdir -p $DIR

docker-machine ls |
grep generic |
awk '{print $1}' |
while read -r MACHINE; do
  echo "=> Back-uping machine $MACHINE..."
  mkdir -p $DIR/$MACHINE

  docker-machine env $MACHINE
  eval $(docker-machine env $MACHINE)

  docker volume ls |
  tail -n +2 |
  awk '{print $2}' |
  while read -r VOL; do
    echo "   Back-uping $VOL..."
    mkdir -p $DIR/$MACHINE
    docker run -v $VOL:/volume --rm loomchild/volume-backup backup - > $DIR/$MACHINE/$VOL.tar.bz2;
  done;
done
