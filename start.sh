DIR=`S=\`readlink "$0"\`; [ -z "$S" ] && S=$0; dirname $S`
echo $DIR

chmod 400 ${DIR}/id_rsa
sshuttle --dns -vr opc@x.x.x.x 0/0 --ssh-cmd "ssh -i ${DIR}/id_rsa"

# ubuntu 18
# sshuttle --dns -vr opc@x.x.x.x 0/0 -x x.x.x.x --ssh-cmd "ssh -i ${DIR}/id_rsa"

# optional
# normal user
# ln -s /u02/app/vpn/start.sh /usr/local/bin/vpn
# vpn
