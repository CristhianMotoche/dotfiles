DIR=$(pwd)

echo "Start!"

for item in $(ls "${DIR}")
do
	echo ${item}
	if [[ "${item}" == "config" || "${item}" == "my_bin" ]]; then
		# Do nothing
		echo "Skip directory... Will be linked later"
	else
		ln -s "${DIR}/${item}" "${HOME}/.${item}"
	fi
done

ln -s "${DIR}/my_bin" "${HOME}/.my_bin"
ln -s "${DIR}/config/nvim" "${HOME}/.config/nvim"

toDelete=(README.markdown links.sh programs.sh)

for item in ${toDelete}
do
	rm "${HOME}/.${item}"
done

echo "Finish!"
