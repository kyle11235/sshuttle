DIR=`S=\`readlink "$0"\`; [ -z "$S" ] && S=$0; dirname $S`
echo $DIR

# optional
# cd /usr/local/bin && ln -s /full_path/start.sh vpn

sshuttle --dns -vr opc@x.x.x.x 0/0 --ssh-cmd "ssh -i ${DIR}/id_rsa"
