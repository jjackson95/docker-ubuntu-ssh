touch "spamfile.txt"
echo "spam " >> "spamfile.txt"
git pull
git add .
git commit -m "fill bytes"
git push --force origin master
printf "tunggu 1jam"
sleep 3600
start spam.sh
