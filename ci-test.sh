#!/bin/bash                                                                                                                                                            
echo '>>> Get old container id'
CID=$(docker ps | grep "github-test" | awk '{print $1}')
echo $CID
sudo /bin/docker build -t github-test /home/kangkai-iri/git/Jenkins_Docker_2048 | tee /home/kangkai-iri/git/Jenkins_Docker_2048/Docker_build_result.log
echo '>>> Stopping old container'
if [ "$CID" != "" ];then
sudo /bin/docker stop $CID
fi
   
echo '>>> Starting new container'
sudo /bin/docker run -p 3000:80 -d github-test
IP=$(hostname -i)
echo '>>> The game is running at http://'$IP':3000'
