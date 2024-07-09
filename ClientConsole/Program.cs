using TicTacToe;

TicTacToeGame game = new TicTacToeGame();

Console.WriteLine("TicTacToe Client Console");
while (true)
{
    DrawBoard();
    Console.WriteLine("Player " + game.CurrentPlayer + "'s turn. Enter cell (0-8):");

    if (!int.TryParse(Console.ReadLine(), out int cell))
    {
        Console.WriteLine("Invalid input. Please enter a number between 0 and 8.");
        continue;
    }
    
    try
    {
        game.Play(cell);
    }
    catch (Exception e)
    {
        Console.WriteLine(e.Message);
        continue;
    }
    
    if (game.GetWinner() != null)
    {
        DrawBoard();
        var winner = game.GetWinner();
        Console.WriteLine($"Player {winner.Player} wins {winner.Direction} starting at cell ({winner.startX}, {winner.startY})!");
        break;
    }
    else if (game.IsDraw())
    {
        Console.WriteLine(game.Board);
        Console.WriteLine("It's a draw!");
        break;
    }
}

void DrawBoard()
{
    for (int i = 0; i < 3; i++)
    {
        Console.Write("| ");
        for (int j = 0; j < 3; j++)
        {
            Console.Write(game.Board[i, j] == "" ? " " : game.Board[i, j]);
            if (j < 2)
            {
                Console.Write(" | ");
            }
        }
        Console.Write(" |");
        Console.WriteLine();
        
    }
}