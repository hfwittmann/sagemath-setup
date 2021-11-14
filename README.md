# sagemath-setup
Simple way to run your own SageMath server

From wikipedia:
https://en.wikipedia.org/wiki/SageMath

SageMath (previously Sage or SAGE, "System for Algebra and Geometry Experimentation") is a computer algebra system (CAS) with features covering many aspects of mathematics, including algebra, combinatorics, graph theory, numerical analysis, number theory, calculus and statistics.

This repository provides instructions for a docker setup to run yout own SageMath server.

Prerequisites:

- Hardware (typically eg a Notebook runnning Linux, MacOS or Windows)
- An installation of docker optinally git (for ease of use)
- On windows: gitbash

Remark : Run in the following always means run in bash (or gitbash)


To run your SageMath
- clone the gtihub repository, e.g. do :
  git clone https://github.com/hfwittmann/sagemath-setup
- cd into folder sagemath-setup
- run :
  docker-compose -p deployment -f docker-compose.yml up --build -d
- you need a token later, to get the token do :
  docker exec -it deployment_sagemath_1 sage -jupyter notebook list

  On running this command an app folder will be created inside the current folder. The contents of the app folder will also be available inside the container.

    You get a response that look like
    Currently running servers:
    http://0.0.0.0:8888/?token=d8584174f7d6eadc14f5d78a157f817e8c30e967d0018a48 :: /home/sage

    Copy the token in this case d8584174f7d6eadc14f5d78a157f817e8c30e967d0018a48

- open your browser at
  http://localhost:

- You get a page Titled Jupyter, with a box:
  Password or token
- Paste your token into box, hit enter and you're good to go


All the documents inside the app folder will be available inside the container.
