DIR=$(pwd)

echo "Start!"

for item in $(ls "${DIR}")
do
  echo ${item}
  ln -s "${DIR}/${item}" "${HOME}/.${item}"
done

toDelete=(README.markdown links.sh programs.sh)

for item in ${toDelete}
do
  rm "${HOME}/.${item}"
done

echo "Finish!"
