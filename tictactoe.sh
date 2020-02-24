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
function value()
{
	#player=1
	#computer=0
	if [ $check -eq 1 ]
	then
		player="X"
		computer="0"
	else
		player="0"
		computer="X"
	fi
}

function toss()
{
	#player=1
	#computer=0
	if [ $check -eq 1 ]
	then
		echo "Player has won the toss"
	else
		echo "Computer has won the toss"
	fi
}


display_board
value
toss
