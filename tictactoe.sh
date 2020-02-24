#tictac toe game
echo "welcome to tictac toe game"
echo "lets start the game "
declare -A board

check=$((RANDOM%2))
TOTALCOUNT=9

movecount=1


function reset_board()
{
	for(( num=1; num<=3; num++ ))
	do
		for(( num_in=1; num_in<=3; num_in++ ))
		do
			board[$num,$num_in]="-"
		done
	done
}
function assign_symbol()
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
unction display_board()
{
        for(( num=1; num<=3;  num++ ))
        do
                for(( num_in=1; num_in<=3; num_in++ ))
                do
                        board[$num,$num_in]=""
                done
        done

function checkEmptyCell()
{
	read -p "Enter row: " row
	read -p "Enter column: " column
	
	if [ ${board[$row,$column]} == "-" ]
	then
		board[$row,$column]=$player
		((movecount++))
		display_board
	else
		echo "Position Occupied or Invalid Position"
	fi
}

assign_symbol
reset_board

while [ $movecount -le $TOTALCOUNT ]
do
		checkEmptyCell
done
}
function computer_win_check()
{
	for (( num=1; num<=3; num++ ))
	do
		for (( num_in=1; num_in<=3; num_in++ ))
		do
#........Horizontal...........................................................................................................................
			if [[ ${board[$i,$j]} == "-" && ${board[$i,$(( $j + 1 ))]} == $computer && {board[$i,$(( $j + 2 ))]} == $computer ]]
			then
				board[$i,$j]=$computer
			elif [[ ${board[$i,$j]} == $computer && ${board[$i,$(( $j + 1 ))]} == "-" && {board[$i,$(( $j + 2 ))]} == $computer ]]
			then
				board[$i,$(( $j + 1 ))]=$computer
			elif [[ ${board[$i,$j]} == $computer && ${board[$i,$(( $j + 1 ))]} == $computer && {board[$i,$(( $j + 2 ))]} == "-" ]]
			then
				board[$i,$(( $j + 2 ))]=$computer
			fi
                        if [[ ${board[$j,$i]} == "-" && ${board[$(( $j + 1 )),$i]} == $computer && ${board[$(( $j + 2 )),$i]} == $computer ]]
			then
				board[$j,$i]=$computer
			elif [[ ${board[$j,$i]} == $computer && ${board[$(( $j + 1 )),$i]} == "-" && ${board[$(( $j + 2 )),$i]} == $computer ]]
			then
				board[$(( $j + 1 )),$i]=$computer
			elif [[ ${board[$j,$i]} == $computer && ${board[$(( $j + 1 )),$i]} == $computer && ${board[$(( $j + 2 )),$i]} == "-" ]]
			then
				board[$(( $j + 2 )),$i]=$computer
			fi
#........Diagonal1.............................................................................................................................
			if [[ ${board[$i,$j]} == "-" && ${board[$(( $i + 1 )),$(( $j + 1 ))]} == $computer && ${board[$(( $i + 2 )),$(( $j + 2 ))]} == $computer ]]
			then
				board[$i,$j]=$computer
			elif [[ ${board[$i,$j]} == $computer && ${board[$(( $i + 1 )),$(( $j + 1 ))]} == "-" && ${board[$(( $i + 2 )),$(( $j + 2 ))]} == $computer ]]
			then
				board[$(( $i + 1 )),$(( $j + 1 ))]}=$computer
			elif [[ ${board[$i,$j]} == $computer && ${board[$(( $i + 1 )),$(( $j + 1 ))]} == $computer && ${board[$(( $i + 2 )),$(( $j + 2 ))]} == "-" ]]
			then
				board[$(( $i + 2 )),$(( $j + 2 ))]=$computer
			fi
#........Diagonal2.............................................................................................................................
			if [[ ${board[$i,$(( $j + 2 ))]} == "-" && ${board[$(( $i + 1 )),$(( $j + 1 ))]} == $computer && ${board[$(( $i + 2 )),$j]} == $computer ]]
			then
				board[$i,$j]=$computer
			elif [[ ${board[$i,$(( $j + 2 ))]} == $computer && ${board[$(( $i + 1 )),$(( $j + 1 ))]} == "-" && ${board[$(( $i + 2 )),$j]} == $computer ]]
			then
				board[$(( $i + 1 )),$(( $j + 1 ))]=$computer
			elif [[ ${board[$i,$(( $j + 2 ))]} == $computer && ${board[$(( $i + 1 )),$(( $j + 1 ))]} == $computer && ${board[$(( $i + 2 )),$j]} == "-" ]]
			then
				board[$i,$j]=$computer
			fi
		done
	done
