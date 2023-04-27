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

# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# sudo apt install cargo

# cargo install --git https://github.com/MystenLabs/sui.git --branch testnet sui

# source "$HOME/.cargo/env"

# rustup install stable

# rustup update stable

# rustup default stable

sui genesis --force

rm -rf /.sui/sui_config/client.yaml

sui client

sui move new my_first_package

cd my_first_package && git clone https://github.com/Vahidebadi96/sources

echo "Enter your wallet phrase:"

read phrase

sui keytool import "$phrase" ed25519

echo "Enter wallet address:"

read walletaddress

sui client switch --address $walletaddress

sui client publish --gas-budget 30000000



sui client call --function sword_create --module my_module --package 0xc4332ab7a0bbfde793f202d6a8c93e1b436bc9a54c8b71265245f3265eb649be --args 0x2b4dfdbd42bb7ddf993b89425c68e9fb27cccef6d76805ce8f9cf64051ad810a 42 7 0x5b9ae824a03001c076e8c9055eb5297908465583b3a5c0e06097cdf1f71648c5 --gas-budget 30000000