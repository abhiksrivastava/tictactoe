#tictac toe game
echo "welcome to tictac toe game"
echo "lets start the game "
declare -A board

check=$((RANDOM%2))


function display_board()
{
	for(( num=1; num<=3;  num++ ))
	do
		for(( num_in=1; num_in<=3; num_in++ ))
		do
			board[$num,$num_in]=""
		done
	done
}
