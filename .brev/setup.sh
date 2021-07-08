sudo apt-get update
sudo apt-get install -y gdebi-core
sudo apt-get install -y wget

export R_VERSION=4.0.5
curl -O https://cdn.rstudio.com/r/ubuntu-2004/pkgs/r-4.0.5_1_amd64.deb
sudo gdebi --n r-4.0.5_1_amd64.deb

sudo apt update -qq

sudo apt install -y --no-install-recommends software-properties-common dirmngr

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

sudo apt install -y --no-install-recommends r-base

sudo add-apt-repository -y ppa:c2d4u.team/c2d4u4.0+

sudo apt-get install r-base

wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.4.1717-amd64.deb
sudo gdebi rstudio-server-1.4.1717-amd64.deb --n


sudo dpkg -i rstudio-server-1.4.1717-amd64.deb
sudo apt-get -f install -y
sudo apt-get --fix-broken install -y


username=rstudio
password=rstudio
sudo adduser --gecos "" --disabled-password $username
sudo chpasswd <<< "$username:$password"
