#!/bin/bash
echo Your container args are: "$@"
echo "Running $@"
exec java -jar /app/app.jar "$@"