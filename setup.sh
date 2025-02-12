#!/bin/bash
cd "$(dirname "$0")" || exit

is_valid_sk_key() {
  local api_key=$1
  local pattern="^sk-[a-zA-Z0-9]{48}$"
  [[ $api_key =~ $pattern ]] && return 0 || return 1
}

echo -n or press enter to continue with no key: "
read OPENAI_API_KEY

if is_valid_ || [ -z "$" ]; then
  echo "Valid API key"
else
  echo ". Please ensure that you have billing set up on your OpenAI account"
  exit
fi

NEXTAUTH_SECRET=$(openssl rand -base64 32)

ENV="NODE_ENV=development\n\
NEXTAUTH_SECRET=$NEXTAUTH_SECRET\n\
NEXTAUTH_URL=http://localhost:3000\n\
NEXT_PUBLIC_BACKEND_URL=http://localhost:3000\n\
OPENAI_API_KEY=$OPENAI_API_KEY\n\
DATABASE_URL=file:../db/db.sqlite\n"

cd next
printf $ENV > .env
printf $ENV > .env.docker



text=audio
