# camunda-user-support
Snippets and Examples for using Camunda with Robot Framework

Over time this repositiry is supposed to grow a collection from real requests coming from several sources.

## How to get support

### Robot Framework Slack Channel
You likely get quickest feedback from Camunda channel at Robot Framework Slack. You can invite yourself at: https://rf-invite.herokuapp.com/

### Forum
Robot Framework forum has a board for questions around camunda: https://forum.robotframework.org/c/libraries/camunda/38

### GitHub Issue Board
Open a question at the issue board of this GitHub repositiory.

## How to learn Robot Framework
The best way to learn Robot Framework is by writing your own first Test Case or Task. You can find starting material here: https://robotframework.org/#learning

# Local Setup
There are many ways to set up Camunda Platform, as there are many ways to set up Robot Framework. 

## Camunda Platform Run
I recommend using the [official docker image] of the powerful community edition by running:
```
docker run -d --name camunda -p 8080:8080 camunda/camunda-bpm-platform:latest
```
You access your local Camunda platform on http://localhost:8080 . Username: `demo` - Password: `demo`

## Install Robotframework
You require Python 3 SDK on your environment. It might work with Python 2, but that is not tested and expected to create trouble at some point. When you install CamundaLibrary, Robot Framework will be installed automatically as required dependency:
```
pip install -U robotframework-camunda
```
## Execute examples
When you now checkout this repository at run it with you python environment, you should see results:
```
robot -d logs .
```
