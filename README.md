#fig and node.js simple server

## Requirements

 * Install [boot2docker](http://boot2docker.io/).
 * Install [fig](http://www.fig.sh/).

## Usage

    git clone https://github.com/realyze/fig-node.git fig-node
    cd fig-node
    npm install
    fig up

then you will see message below,

     Recreating fignode_web_1...
     
Please note that you if you're sharing the app directory into the docker container, you have to run `npm install` outside of the container (i.e., on the host system). If you just run it in `Dockerfile` it won't be there as the directory gets "replaced" by the shared directory from the host system (see https://github.com/docker/fig/issues/372).

## Set up a DNS alias
Add a `boot2docker` alias to your `/etc/hosts`:
```
echo "$(boot2docker ip 2> /dev/null) localdocker" | sudo tee -a /etc/hosts
```

## Test
`curl localdocker:3000` should return "Hello world! I'm running in docker!".

## Kudos
Shamelessly based on [fig-node](https://github.com/clonn/fig-node).
