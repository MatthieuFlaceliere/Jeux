namespace TicTacToe;

public class TicTacToeGame
{
}
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

}