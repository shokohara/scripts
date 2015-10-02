#!/bin/bash
set -x
set -e
BUCKET_NAME='skohar-home'

#ENVIRONMENT_NAME='timecapsule'
#FROMDIR='/Volumes'
#aws s3 sync $FROMDIR s3://$BUCKET_NAME/$ENVIRONMENT_NAME/

#ENVIRONMENT_NAME='shoprivate'
#FROMDIR='/Volumes'
#aws s3 sync $FROMDIR s3://$BUCKET_NAME/$ENVIRONMENT_NAME/

#ENVIRONMENT_NAME='minamiprivate'
#FROMDIR='/Volumes'
#aws s3 sync $FROMDIR s3://$BUCKET_NAME/$ENVIRONMENT_NAME/

ENVIRONMENT_NAME='shosmb'
FROMDIR="$HOME/.aws"
aws s3 sync $FROMDIR s3://$BUCKET_NAME/$ENVIRONMENT_NAME$FROMDIR
