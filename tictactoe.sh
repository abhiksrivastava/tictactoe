#tictac toe game
echo "welcome to tictac toe game"
echo "lets start the game "
function roll()
{
   randomCheck=$((RANDOM%6 + 1))
   echo "When we throw the die $randomCheck comes"
   ((totalrandomCheck++))
}

