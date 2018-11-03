#!/bin/bash

# For now, I know user home
user_home="/home/pi"
echo "Go to ${user_home} dir"
echo ""
cd $user_home

# sets the ssh keys to reference for git
export GIT_SSH="${user_home}/git-ssh.sh"
export GIT_SSH_KEY="${user_home}/.ssh/id_rsa"
# Remove the current ~/ddrone-pi dir
echo "Remove the current ${user_home}/ddrone-pi dir"
sudo rm -rf "${user_home}/ddrone-pi"

# TODO: Check if dke-labs-grim-trigger already exists
#       If it does, update it
dke_git_dir="${user_home}/dke-labs-grim-trigger"
ddrone_repo="git@github.com:asmattic/dke-labs-grim-trigger.git" 
if [ -d "$dke_git_dir" ]
then
    echo "${dke_labs_git_dir} exists"
    # echo "Here are the branches"
    cd $dke_git_dir \
    # && git branch -a
    # echo "Type the one you want and hit [ENTER]"
    # read git_branch_to_pull
    git_branch_to_pull="master"
    echo "You chose ${git_branch_to_pull}, about to pull"
    git checkout ${git_branch_to_pull} \
    && git pull origin ${git_branch_to_pull}
else
    echo "Get the whole GitHub repo"
    echo "${ddrone_repo}"
    echo ""
    git clone $ddrone_repo
fi
