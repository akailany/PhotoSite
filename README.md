# A simple PhotoSite (RoR) project, dockerized and deployed on Amazon's AWS Elastic Container Service (EC2)



# Table of Contents
1. Intro and Purpose

        Creating the EC2 instance
        
        Creating a local docker image and pushing it to the Docker Hub
        

2. Demo of the RoR application running on AWS


3. Things that are not working
4. YouTube Video demoing the PhotoSite working
5. Special Issue 1: What happens when an instance stops running?
6. Special Issue 2: What happens when you reboot an instance and what can you do?



#1. Intro and Purpose
This repo contains a simple Ruby on Rails (RoR) project that mimics a photo site application. The website contains two URL's. The first URL (**user/index**) shows a list of the user's which is obtained from a SQLite database and links to each user's profile.

The second URL (**photo/index/:id**) contains the profile of that specific user as well as their immages. In addition, these immages have a comment section that displays comments made by other users on the picture. All users are linkable profiles.




