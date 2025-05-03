📘 Tutorial – Install Node on Ubuntu Server 22.04
Install a node for your coin on Ubuntu Server 22.04 by following the steps below:

✅ Step 1: Update your Ubuntu server
bash
Copy
Edit
sudo apt-get update && sudo apt-get upgrade -y
✅ Step 2: Download the daemon
bash
Copy
Edit
wget "https://dl.walletbuilders.com/download?customer=8488a66cf086ed7ef420d4c166af6447866634f64d49b90bc4&filename=pepehash-daemon-linux.tar.gz" -O pepehash-daemon-linux.tar.gz
📦 Extract the daemon archive:
bash
Copy
Edit
tar -xzvf pepehash-daemon-linux.tar.gz
✅ Step 3: Download the wallet tools
bash
Copy
Edit
wget "https://dl.walletbuilders.com/download?customer=8488a66cf086ed7ef420d4c166af6447866634f64d49b90bc4&filename=pepehash-qt-linux.tar.gz" -O pepehash-qt-linux.tar.gz
📦 Extract the tools archive:
bash
Copy
Edit
tar -xzvf pepehash-qt-linux.tar.gz
✅ Step 4: Install binaries system-wide
bash
Copy
Edit
sudo mv pepehashd pepehash-cli pepehash-tx /usr/bin/
✅ Step 5: Create the data directory
bash
Copy
Edit
mkdir $HOME/.pepehash
✅ Step 6: Configure your node
Open nano:

bash
Copy
Edit
nano $HOME/.pepehash/pepehash.conf
Paste the following configuration:

conf
Copy
Edit

rpcuser=rpc_pepehash

rpcpassword=dR2oBQ3K1zYMZQtJFZeAerhWxaJ5Lqeq9J2

rpcbind=127.0.0.1

rpcallowip=127.0.0.1

listen=1

server=1

txindex=1

daemon=1

Save with: Ctrl + X, then press Y and Enter.

✅ Step 7: Start your node
bash
Copy
Edit
pepehashd
Your PepeHash node is now running 🎉

