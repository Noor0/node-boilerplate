# node-boilerplate

Node boilerplate with ESLint, Prettier, Editorconfig and Babel for ES6+ ⚡.

Clone this repo to use node with latest JS features with prettier and eslint configured. Make sure you integrate prettier with you editor.

## Using With Docker

If you wish to use this repo without etting local development environment then you can either use `Docker CLI` or `docker-compose` to build images and run your development app inside a container.

<details>
  <summary>Docker CLI</summary>
  
  Run any `node js` container in interactive mode, mount your code directory into the container as `mount` type volume 
  and use it as your dev environment:
     
  `docker container run -it --name my-app -v "$(pwd)":/container/dir/app -p 5000:5000 node:lts-alpine /bin/sh`
        
  inside this container and any changes made from the container will appear in your host directory. you can install
  dependecies (e.g. `npm install`) and run your server or whatever that is you want to do from this container without 
  setting up anything on your local machine.
        
  to restart the container, run `docker container start -i my-app`
</details>

<details>
  <summary>Docker Compose</summary>
  
  1. build and image to install dependencies using `docker-compose`:
     
     `docker-compose -f docker-compose.dev.yml up install-dependencies`
        
  2. run your app
   
     `docker-compose -f docker-compose.dev.yml up app-dev`
     
</details>
