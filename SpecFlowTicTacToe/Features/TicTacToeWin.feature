Feature: TicTacToeWin
    
    @TicTacToe
    Scenario: Player X wins Horizontal starting at cell 0
        Given the board: 
            | X | X |   |
            |   |   |   |
            |   |   |   |
        When player X plays in cell 2
        Then the player X wins Horizontal starting at cell 0
    
    @TicTacToe
    Scenario: Player X wins Horizontal starting at cell 3
        Given the board: 
            |   |   |   |
            | X | X |   |
            |   |   |   |
        When player X plays in cell 5
        Then the player X wins Horizontal starting at cell 3
    
    @TicTacToe
    Scenario: Player X wins Horizontal starting at cell 6
        Given the board: 
            |   |   |   |
            |   |   |   |
            | X | X |   |
        When player X plays in cell 8
        Then the player X wins Horizontal starting at cell 6
    
    @TicTacToe
    Scenario: Player X wins Vertical starting at cell 0
        Given the board: 
            | X |   |   |
            | X |   |   |
            |   |   |   |
        When player X plays in cell 6
        Then the player X wins Vertical starting at cell 0
     
    @TicTacToe
    Scenario: Player X wins Vertical starting at cell 1
        Given the board: 
            |   | X |   |
            |   | X |   |
            |   |   |   |
        When player X plays in cell 7
        Then the player X wins Vertical starting at cell 1
        
    @TicTacToe
    Scenario: Player X wins Vertical starting at cell 2
        Given the board: 
            |   |   | X |
            |   |   | X |
            |   |   |   |
        When player X plays in cell 8
        Then the player X wins Vertical starting at cell 2
        
    @TicTacToe
    Scenario: Player X wins Diagonal starting at cell 0
        Given the board: 
            | X |   |   |
            |   | X |   |
            |   |   |   |
        When player X plays in cell 8
        Then the player X wins Diagonal starting at cell 0
        
    @TicTacToe
    Scenario: Player X wins Diagonal starting at cell 2
        Given the board: 
            |   |   | X |
            |   | X |   |
            |   |   |   |
        When player X plays in cell 6
        Then the player X wins AntiDiagonal starting at cell 2
        
    @TicTacToe
    Scenario: Player O wins Horizontal starting at cell 0
        Given the board: 
            | O | O |   |
            |   |   |   |
            |   |   |   |
        When player O plays in cell 2
        Then the player O wins Horizontal starting at cell 0
        
    @TicTacToe
    Scenario: Player O wins Horizontal starting at cell 3
        Given the board: 
            |   |   |   |
            | O | O |   |
            |   |   |   |
        When player O plays in cell 5
        Then the player O wins Horizontal starting at cell 3
        
    @TicTacToe
    Scenario: Player O wins Horizontal starting at cell 6
        Given the board: 
            |   |   |   |
            |   |   |   |
            | O | O |   |
        When player O plays in cell 8
        Then the player O wins Horizontal starting at cell 6
        
    @TicTacToe
    Scenario: Player O wins Vertical starting at cell 0
        Given the board: 
            | O |   |   |
            | O |   |   |
            |   |   |   |
        When player O plays in cell 6
        Then the player O wins Vertical starting at cell 0
        
    @TicTacToe
    Scenario: Player O wins Vertical starting at cell 1
        Given the board: 
            |   | O |   |
            |   | O |   |
            |   |   |   |
        When player O plays in cell 7
        Then the player O wins Vertical starting at cell 1
        
    @TicTacToe
    Scenario: Player O wins Vertical starting at cell 2
        Given the board: 
            |   |   | O |
            |   |   | O |
            |   |   |   |
        When player O plays in cell 8
        Then the player O wins Vertical starting at cell 2
        
    @TicTacToe
    Scenario: Player O wins Diagonal starting at cell 0
        Given the board: 
            | O |   |   |
            |   | O |   |
            |   |   |   |
        When player O plays in cell 8
        Then the player O wins Diagonal starting at cell 0
        
    @TicTacToe
    Scenario: Player O wins Diagonal starting at cell 2
        Given the board: 
            |   |   | O |
            |   | O |   |
            |   |   |   |
        When player O plays in cell 6
        Then the player O wins AntiDiagonal starting at cell 2
        
    @TicTacToe
    Scenario: No player wins
        Given the board: 
            | X | O | X |
            |   |   |   |
            |   |   |   |
        When player X plays in cell 8
        Then no player wins