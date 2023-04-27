echo "Wallet phrase?"

read phrase

sui keytool import "$phrase" ed25519
