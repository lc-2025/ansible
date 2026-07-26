# Nodes
for i in 1 2 3; do
  multipass launch --name node$i --memory 1.5G --disk 10G
done

# Network initialization
sleep 10

# OpenSSH
for vm in node1 node2 node3; do
  multipass exec $vm -- sudo apt-get update -qq
  multipass exec $vm -- sudo apt-get install -y openssh-server
  multipass exec $vm -- sudo systemctl enable --now ssh
done
