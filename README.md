# DevOpsTeam1
Deploying a HTML Site with Docker and Nginx
Create a directory Team1 under c:\users\ABC
Create a txt file without extension and named it Dockerfile and save the following value
    FROM nginx:alpine
    COPY . /usr/share/nginx/html
Build the Docker image for the html server
    docker build -t html-server-image:v1 .
confirm the creation...
    docker images
Run the Docker container
    docker run -d -p 80:80 html-server-image:v1
Test the port's availability
    curl localhost:80

Create a “DevOpsTeam1” folder in Team1 location. Move Docker and team1.html file there.
Open VS code to include the container to push in GIT
Select the DevOpsTeam1 folder….follow the instruction.
Open the terminal to write the Git Command to push the container.

git add Dockerfile
git add team1.html
got status
git config --global user.name "Famura17"
git config --global user.email "f_muqtadir@yahoo.com"
git config --global --list
git commit -m "my first commit"
git checkout -b DOps
git push origin DOps
  Browser pop up with authentication message. Agreed
      Total 4 (delta 0), reused 0 (delta 0), pack-reused 0       
      remote: 
      remote: Create a pull request for 'DOps' on GitHub by visiting:
      remote:      https://github.com/Famura17/DevOpsTeam1/pull/new/DOps
      remote:
      To https://github.com/Famura17/DevOpsTeam1.git
      * [new branch]      DOps -> DOps
      
      
