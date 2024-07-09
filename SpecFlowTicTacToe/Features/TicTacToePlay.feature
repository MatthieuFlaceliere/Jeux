Feature: TicTacToe play
    
    @TicTacToe
    Scenario: Player X plays
        Given the board: 
            |   |   |   |
            |   |   |   |
            |   |   |   |
        When player X plays in cell 0
        Then the board should be:
            | X |   |   |
            |   |   |   |
            |   |   |   |
        When player X plays in cell 1
        Then the board should be:
            | X | X |   |
            |   |   |   |
            |   |   |   |
        When player X plays in cell 2
        Then the board should be:
            | X | X | X |
            |   |   |   |
            |   |   |   |
        When player X plays in cell 3
        Then the board should be:
            | X | X | X |
            | X |   |   |
            |   |   |   |
        When player X plays in cell 4
        Then the board should be:
            | X | X | X |
            | X | X |   |
            |   |   |   |
        When player X plays in cell 5
        Then the board should be:
            | X | X | X |
            | X | X | X |
            |   |   |   |
        When player X plays in cell 6
        Then the board should be:
            | X | X | X |
            | X | X | X |
            | X |   |   |
        When player X plays in cell 7
        Then the board should be:
            | X | X | X |
            | X | X | X |
            | X | X |   |
        When player X plays in cell 8
        Then the board should be:
            | X | X | X |
            | X | X | X |
            | X | X | X |
    
    @TicTacToe
    Scenario: Player O plays
        Given the board: 
            |   |   |   |
            |   |   |   |
            |   |   |   |
        When player O plays in cell 0
        Then the board should be:
          | O |   |   |
          |   |   |   |
          |   |   |   |
        When player O plays in cell 1
        Then the board should be:
          | O | O |   |
          |   |   |   |
          |   |   |   |
        When player O plays in cell 2
        Then the board should be:
          | O | O | O |
          |   |   |   |
          |   |   |   |
        When player O plays in cell 3
        Then the board should be:
          | O | O | O |
          | O |   |   |
          |   |   |   |
        When player O plays in cell 4
        Then the board should be:
          | O | O | O |
          | O | O |   |
          |   |   |   |
        When player O plays in cell 5
        Then the board should be:
          | O | O | O |
          | O | O | O |
          |   |   |   |
        When player O plays in cell 6
        Then the board should be:
          | O | O | O |
          | O | O | O |
          | O |   |   |
        When player O plays in cell 7
        Then the board should be:
          | O | O | O |
          | O | O | O |
          | O | O |   |
        When player O plays in cell 8
        Then the board should be:
          | O | O | O |
          | O | O | O |
          | O | O | O |
     
    @TicTacToe
    Scenario: Players try to play in not empty cell
        Given the board: 
            | X |   |   |
            |   |   |   |
            |   |   |   |
        When player X plays in cell 0
        Then error message should be: "Cell is already taken"
        When player O plays in cell 0
        Then error message should be: "Cell is already taken"
                
    @TicTacToe
        Scenario: Players try to play out of the board
            Given the board:
                |   |   |   |
                |   |   |   |
                |   |   |   |
            When player O plays in cell 9
            Then error message should be: "Cell is out of the board"
            When player O plays in cell -1
            Then error message should be: "Cell is out of the board"
            When player X plays in cell 100
            Then error message should be: "Cell is out of the board"
            
    @TicTacToe
            Scenario: Change current player after each move
                Given the board:
                    |   |   |   |
                    |   |   |   |
                    |   |   |   |
                When player X plays in cell 0
                Then current player should be: O
                When player O plays in cell 1
                Then current player should be: X