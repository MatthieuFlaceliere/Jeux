Feature: TicTacToeDraw
    
    @TicTacToe
    Scenario: The game is a draw
        Given the board: 
            |   | O | X |
            | O | X | O |
            | O | X | O |
        When player X plays in cell 0
        Then the game is a draw
        
    @TicTacToe
    Scenario: The game is not draw when player X wins
        Given the board: 
            |   | X | X |
            | O | 0 | X |
            | O | X | O |
        When player X plays in cell 0
        Then the game is not a draw
        
    @TicTacToe
    Scenario: The game is not draw when no one wins
        Given the board:
            |   |   |   |
            |   |   |   |
            |   |   |   |
        When player X plays in cell 0
        Then the game is not a draw