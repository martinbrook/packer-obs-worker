zypper ar -f http://download.opensuse.org/repositories/OBS:/Server:/2.7/openSUSE_42.1/OBS:Server:2.7.repo
zypper --gpg-auto-import-keys refresh
zypper -n dup -l --replacefiles
zypper update
zypper --non-interactive --no-gpg-checks refresh; zypper --non-interactive --no-gpg-checks install obs-worker
echo /root/setup-worker.sh >> /etc/init.d/after.local
chmod +x /root/setup-worker.sh
