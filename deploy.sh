sudo apt-get install postgresql redis-server
sudo apt-get install git
git clone https://github.com/sacheendra/sen_backend.git
git clone https://github.com/dakshal/sen_frontend.git
sudo -u postgres createuser sengroup
sudo -u postgres createdb senproj -O sengroup
nohup redis-server > ~/sen.log 2>sen.log &
sudo apt-get install npm
cd sen_backend/
npm install
git submodule update --init –recursive
cd signalmaster/
npm install
nohup npm start > ~/sen.log 2>sen.log &
cd ../
nohup npm start > ~/sen.log 2>sen.log &
cd etherpad-lite/
nohup bin/run.sh > ~/sen.log 2>sen.log &
#curl -H 'content-type:application/json' -XPUT localhost:3000/users -d '{"email":"201201091@daiict.ac.in","role":"admin"}'
ls
cd ../../sen_frontend/
sudo python -m SimpleHTTPServer 80


