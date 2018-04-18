FROM node:alpine
RUN mkdir -p /code
WORKDIR /code
ADD . /code

## TODO: Finish This...
RUN npm install -g -s --no-progress yarn && \
    yarn && \
    yarn run build && \
    yarn run prune && \
    yarn cache clean
CMD [ "yarn", "start" ]
EXPOSE 8080
