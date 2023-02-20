files=(
	"welcomescript.bash"
	# "check-updates.bash"
)

dest=$(echo $HOME/.dotfiles/bash/)

for file in ${files[@]}
do
	file=$dest$file
	if [ -x $file ]; then
		bash $file
	fi
done
