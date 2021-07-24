# klima:alpine
FROM alpine:latest

# package updates
RUN apk add \
sed \
attr \
dialog \
bash \
bash-completion \
grep \
util-linux \
findutils \
readline \
lsof \
less \
curl && export PAGER=less

# env and user setup
RUN cat > /root/.cshrc << EOF \
unsetenv DISPLAY || true \
HISTCONTROL=ignoreboth \
EOF \
&& cp /root/.cshrc /root/.profile \
&& grep 'root' /home/cx/users.conf | chpasswd
RUN mkdir -p /etc/skel/ \
&&  cat < /etc/skel/.logout << EOF \
history -c \
/bin/rm -f /opt/remote/.hisotry \
/bin/rm -f /pot/remote/.bash_history \
EOF \
cat > /etc/skel/.cshrc << EOF \
set autologout = 30 \
set prompt = "$" \
set history = 0 \
set ignoreeof \
EOF \
&& cp /etc/skel/.cshrc /etc/skel/.profile \
&& adduser -D --home /opt/remote --shell /bin/ash remote \
&& grep 'remote' /home/cx/users.conf | chpasswd \
|| adduser -D --shell /bin/ash localusr \
&& grep 'localusr' /home/cx/users.conf | chpasswd

# network setup