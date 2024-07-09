namespace TicTacToe;

public class TicTacToeGame
{
    public string[,] Board { get; set; } = new string[3, 3];
    public string CurrentPlayer { get; set; } = "X";

    public bool IsInBounds(int x, int y) => x >= 0 && x < 3 && y >= 0 && y < 3;
    
    public void Play(int x, int y)
    {
        if (!IsInBounds(x, y))
            throw new InvalidOperationException("Cell is out of the board");
        if (Board[x, y] != "")
            throw new InvalidOperationException("Cell is already taken");
        Board[x, y] = CurrentPlayer;
        CurrentPlayer = CurrentPlayer == "X" ? "O" : "X";
    }

    public void Play(int cell)
    {
        Play(cell / 3, cell % 3);
    }

    public Winner GetWinner()
    {
        // Check rows
        for (int i = 0; i < 3; i++)
        {
            if (Board[i, 0] != "" && Board[i, 0] == Board[i, 1] && Board[i, 1] == Board[i, 2])
                return new Winner { Player = Board[i, 0], startX = i, startY = 0, Direction = Direction.Horizontal };
        }
        
        // Check columns
        for (int j = 0; j < 3; j++)
        {
            if (Board[0, j] != "" && Board[0, j] == Board[1, j] && Board[1, j] == Board[2, j])
                return new Winner { Player = Board[0, j], startX = 0, startY = j, Direction = Direction.Vertical };
        }
        
        // Check diagonals
        if (Board[0, 0] != "" && Board[0, 0] == Board[1, 1] && Board[1, 1] == Board[2, 2])
            return new Winner { Player = Board[0, 0], startX = 0, startY = 0, Direction = Direction.Diagonal };
        if (Board[0, 2] != "" && Board[0, 2] == Board[1, 1] && Board[1, 1] == Board[2, 0])
            return new Winner { Player = Board[0, 2], startX = 0, startY = 2, Direction = Direction.AntiDiagonal };
        
        return null;
    }
    
    public bool IsDraw()
    {
        for (int i = 0; i < 3; i++)
            for (int j = 0; j < 3; j++)
                if (Board[i, j] == "")
                    return false;
        return GetWinner() == null;
    }
}

public class Winner
{
    public string Player { get; set; }
    public int startX { get; set; }
    public int startY { get; set; }
    public Direction Direction { get; set; }
}

public enum Direction
{
    Horizontal,
    Vertical,
    Diagonal,
    AntiDiagonal
}

