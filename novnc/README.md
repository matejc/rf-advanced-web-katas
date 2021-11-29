# NoVNC setup for running Robot Framework tests

## Requirements

- Docker
- docker-compose


## Usage

```shell
$ git clone https://github.com/eficode-academy/rf-advanced-web-katas
$ cd rf-advanced-web-katas/novnc
```


### Browser library

```shell
$ env ROBOT_LIBRARY=Browser docker-compose up --build
```


### Selenium Library

```shell
$ env ROBOT_LIBRARY=SeleniumLibrary docker-compose up --build
```


### Seeing the progress

Open `http://localhost:6080` in your favorite browser.


### Trigger the robot

To trigger the run of the robot, modify a file inside your `tests` or `resources` directory.


## TODOs

- Tests for rf-advanced-web-katas for all OS-es * Browser+SeleniumLibrary * Chrome+Firefox
- Documentation!
- Base Dockerfile-s (to auto-build and push on Docker Hub)
