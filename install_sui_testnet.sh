sudo apt-get update

sudo apt install curl

sudo apt-get install git-all

sudo apt-get install cmake

sudo apt-get install gcc

sudo apt-get install libssl-dev

sudo apt-get install pkg-config

sudo apt-get install libclang-dev

sudo apt-get install libpq-dev

sudo apt-get install build-essential

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo apt install cargo

# cargo install --locked --git https://github.com/MystenLabs/sui.git --branch testnet sui

source "$HOME/.cargo/env"

rustup install stable

rustup update stable

rustup default stable

sui genesis --force

rm -rf .sui/sui_config/client.yaml

sui client

echo "what is project name?"

read projectName

sui move new $projectName

cd $projectName && git clone https://github.com/Vahidebadi96/sources

sui client publish --gas-budget 30000000

