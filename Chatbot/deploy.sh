#!/bin/bash

rm *.zip
zip spotify.zip -r *

aws s3 rm s3://sixpotify/spotify.zip
aws s3 cp ./spotify.zip s3://sixpotify/spotify.zip
aws lambda update-function-code --function-name sixpotify --s3-bucket sixpotify --s3-key spotify.zip