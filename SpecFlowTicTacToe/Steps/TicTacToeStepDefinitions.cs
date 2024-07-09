using FluentAssertions;
using TicTacToe;

namespace SpecFlowTicTacToe.Steps;

[Binding]
public sealed class TicTacToeStepDefinitions
{
    private readonly ScenarioContext _scenarioContext;

    private TicTacToeGame _game = new();
    private Exception _exception;
    
    public TicTacToeStepDefinitions(ScenarioContext scenarioContext)
    {
        _scenarioContext = scenarioContext;
    }
    
    private string[,] TableToBoard(Table table)
    {
        string[,] board = new string[3, 3];
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 3; j++)
            {
                if (i == 0)
                    board[i, j] = table.Header.ElementAt(j);
                else
                    board[i, j] = table.Rows[i-1][j];
            }
        }

        return board;
    }

    [Given(@"the board:")]
    public void GivenTheBoard(Table table)
    {
        _game.Board = TableToBoard(table);
    }

    [When(@"player (.*) plays in cell (.*)")]
    public void WhenPlayerXPlaysInCell(string player, int cell)
    {
        _game.CurrentPlayer = player;
        try
        {
            _game.Play(cell);
        }
        catch (Exception e)
        {
            _exception = e;
        }
    }

    [Then(@"the board should be:")]
    public void ThenTheBoardShouldBe(Table table)
    {
        _game.Board.Should().BeEquivalentTo(TableToBoard(table));
    }

    [Then(@"error message should be: ""(.*)""")]
    public void ThenErrorMessageShouldBe(string p0)
    {
        _exception.Message.Should().Be(p0);
        _exception = null;
    }

    [Then(@"current player should be: (.*)")]
    public void ThenCurrentPlayerShouldBe(string p0)
    {
        _game.CurrentPlayer.Should().Be(p0);
    }
}