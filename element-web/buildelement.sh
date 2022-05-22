mkdir ~/build/element-web #create a directory for the build
cd ~/build/element-web #change to the directory
git clone https://github.com/vector-im/element-web.git #clone the element-web repo
cd element-web #change to the element-web directory
export NODE_OPTIONS=--openssl-legacy-provider
yarn install #install the element-web build
cp config.sample.json config.json #copy the config file
#-----------------------#
#edit the config.json file
#-----------------------#
yarn dist #build the element-web build
cd /var/www/default 
#---------------------------------------------------------#
#This is where the element-web build will be served from. 
#More configuration for nginx can be found here:/etc/nginx/
#---------------------------------------------------------#