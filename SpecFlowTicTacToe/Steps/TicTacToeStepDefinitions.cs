namespace SpecFlowTicTacToe.Steps;

[Binding]
public sealed class TicTacToeStepDefinitions
{
    private readonly ScenarioContext _scenarioContext;

    public TicTacToeStepDefinitions(ScenarioContext scenarioContext)
    {
        _scenarioContext = scenarioContext;
    }
}