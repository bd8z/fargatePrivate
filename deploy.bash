#!/bin/bash
VAR=$(uuidgen);
ARR=(${VAR//-/ });
VAR=${ARR[0]};

aws cloudformation create-stack --stack-name "stack-${VAR}" --capabilities CAPABILITY_NAMED_IAM --template-body file://fargateTaskRunTemplate.yaml --parameters ParameterKey=UUID,ParameterValue=${VAR} ParameterKey=subnetID,ParameterValue="subnet-XXXXXXXXXXXX";