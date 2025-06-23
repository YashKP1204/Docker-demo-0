This is a basic react app created to show the use of docker , to containerize the app. 

In this project, i have used the concept of multistage build 

Stage-1 : build stage 

In this stage i have created a base layer based on node-alpine 
copy the package*.json 
Run npm ci

COPY all required source to this phase. 
COPY . . 

at last 

RUN npm run build 

this command run the build 

created the necessary build folder 

Stage-2 : serving the build app to nginx to server on port 80 mapped with 8000 of localhost

From nginx

Copy --from=build /app/build  /usr/share/nginx/html





