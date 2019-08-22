
#!/bin/bash
yum install wget* curl* vim* unzip* -y
yum update -y
yum install http* --skip-broken -y
mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-af70c14d.efs.us-east-1.amazonaws.com:/ /var/www/html/
cd /opt/
wget https://www.free-css.com/assets/files/free-css-templates/download/page231/bizexpress-v1.0.1.zip
unzip *.zip
cd Biz*
mv * /var/www/html/
service httpd start

#------------------------------------------------------#
Note : For Unmount a shared directory :

# umount -l /var/www/html/
