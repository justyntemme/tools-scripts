function killport() {
	kill $(lsof -n -i4TCP:"$1" | awk 'END {print $2}')
}
