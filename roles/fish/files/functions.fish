# IDEA
function ideas
    screen -S idea -d -m idea $argv
end

# Docker
function de
    docker exec -it -u $argv[1..2] bash
end

function drc
    docker rm -v $argv
end

function drrm
    docker run --rm $argv
end

function ci
    docker ps -aqf "name="$argv
end

# tid
function tlsm
  tid entry list -s=(date -dlast-monday +%Y-%m-%d)
end

# psql
#function psql
#  set db $argv[3]
#  if [ -z $db ]
#      set db $argv[2]
#  end
#  docker run -it --rm postgres psql -h $argv[1] -U $argv[2] -d $db
#end

# Servers
function ta
  ssh ig657@tcapp$argv[1].york.ac.uk
end

# Sql developer
function osql
  screen -S idea -d -m sqldeveloper
end

# NVM
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

function mb
  aws s3 mb s3://$argv[1] --region eu-west-1
end

# Android
function emud
  emulator @Pixel_3_API_28 $argv > /dev/null 2>&1 &
end
