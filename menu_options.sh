#!/bin/bash
sudo cp variables.sh /etc/profile.d/
OPTIONS="Create-cluster Create-image Deploy-image Quit"
select opt in $OPTIONS; do
    if [ "$opt" = "Quit" ]; then
     echo done
     exit
    elif [ "$opt" = "Create-cluster" ]; then
     echo Terraform apply
     terraform apply
    elif [ "$opt" = "Create-image" ]; then
     echo Build image
     docker build -t apps-restapi python-flask-restapi/
     docker tag apps-restapi gcr.io/$project_id/apps-restapi
     docker push gcr.io/$project_id/apps-restapi
    elif [ "$opt" = "Deploy-image" ]; then
     echo Deploy image
     kubectl apply -f deploy_greetings.yaml 
    else
     clear
     echo bad option
    fi
done
