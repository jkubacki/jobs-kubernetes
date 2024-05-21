#!/usr/bin/env bash

path=$1

sealed_path=${path/secrets.yml/sealed-secrets.yml}
sealed_path=${sealed_path/.secret.yml/.sealed-secret.yml}

echo "kubeseal --format yaml --cert kubeseal.public.pem < $path > $sealed_path"
kubeseal --format yaml --cert kubeseal.public.pem < $path > $sealed_path
