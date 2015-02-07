#fig and node.js simple server

## Requirements

 * Install [boot2docker](http://boot2docker.io/).
 * Install [fig](http://www.fig.sh/).

## Usage

    git clone https://github.com/realyze/fig-node.git fig-node
    cd fig-node
    fig up

then you will see message below,

     Recreating fignode_web_1...

## Set up a DNS alias
Add a `boot2docker` alias to your `/etc/hosts`:
```
echo "$(boot2docker ip 2> /dev/null) localdocker" | sudo tee -a /etc/hosts
```

## Test
`curl localdocker:3000` should return "Hello world! I'm running in docker!".
