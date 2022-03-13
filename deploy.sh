#!/usr/bin/env bash
yarn tsc    
yarn build    
docker image build . -f packages/backend/Dockerfile --tag registry.heroku.com/backstagedevlabs/web
docker push registry.heroku.com/backstagedevlabs/web
heroku container:release web  -a backstagedevlabs