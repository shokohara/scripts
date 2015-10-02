#!/bin/bash
set -x
set -e
BUCKET_NAME='skohar-home'

ENVIRONMENT_NAME='timecapsule'
FROMDIR='/Volumes'
aws s3 sync $FROMDIR s3://$BUCKET_NAME/$ENVIRONMENT_NAME$FROMDIR

ENVIRONMENT_NAME='shoprivate'
FROMDIR='/Volumes'
aws s3 sync $FROMDIR s3://$BUCKET_NAME/$ENVIRONMENT_NAME$FROMDIR
