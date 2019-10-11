DIR=`S=\`readlink "$0"\`; [ -z "$S" ] && S=$0; dirname $S`
echo $DIR

# optional
# ln -s /u02/app/vpn/start.sh /usr/local/bin/vpn

sshuttle --dns -vr opc@x.x.x.x 0/0 --ssh-cmd "ssh -i ${DIR}/id_rsa"
