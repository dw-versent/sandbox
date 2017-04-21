# Containers with Ansible

Here is a composition with two containers, one "client" and one "controller".

## Client

The client is a "blank" machine running sshd, ready to be ansiblized.

## Controller

The controller is a ansible-ready machine with a playbook that points at the client.

## To build all the things

First, `docker-compose -f compose-base-images.yml build`

This will create the base images with all the things `apt install`ed.

Then, `docker-compose up`

You will see the output from the playbook saying everything's cool.

```
Creating sandbox_client_1
Creating sandbox_controller_1
Attaching to sandbox_client_1, sandbox_controller_1
controller_1  |
controller_1  | PLAY [This is a hello-world example] ******************************************
controller_1  |
controller_1  | GATHERING FACTS ***************************************************************
controller_1  | ok: [client]
controller_1  |
controller_1  | TASK: [Create a file called '/tmp/testfile.txt' with the content 'hello world'.] ***
controller_1  | changed: [client]
controller_1  |
controller_1  | PLAY RECAP ********************************************************************
controller_1  | client                     : ok=2    changed=1    unreachable=0    failed=0
controller_1  |
sandbox_controller_1 exited with code 0
```

To ensure it actually happened, you could write a BATS test to check the file is there and 
containst the text we expect to see.

Until you do that, a manual check is done like this:

```
docker exec -it sandbox_client_1 /bin/bash
root@client:/# cat ~/iamroot.txt
hello world... i am root
```

Success!
