#!/bin/bash
pamac build tftp-hpa -y

tee /etc/conf.d/tftpd <<EOF
TFTPD_ARGS="--secure /srv/tftp/"
TFTP_OPTIONS="--create --permissive"
EOF

echo "Sucesso meu nobre!!"
