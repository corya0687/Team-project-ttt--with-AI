=begin
	1.How computer player will never lose.
		 Determines if it gets to go first or not.
			A. If first
				1.  Turn-1 == @current_move_count
					i Pick Center
		
					a.  Turn 2- @current_move_count

						i If other player picked an edge piece Last turn

							a. Pick one of 2 corners opposite of other
							players edge token.

								i. Turn 3 @current_move_count
									a. If win combination position a valid move?
										i. Move to win position
										***GAME OVER*** Win
									b. else
										i. move_block_win
										 a. Turn 4 @current_move_count
											i. move_block_win
										***GAME OVER*** Win

						ii. If other player picked corner last turn
								a. Place your token on diagonally opposite 
								corner.
							 i. Turn 3 @current_move_count
									i. If player picked edge position last turn
										if can_player_win?
											move_block_win
											else
												move to corner opposite of players last turn
												a. . Turn 4 @current_move_count
												move_block_win
												***GAME OVER
									ii. If player picked corner position
										move_block_win until game over 
										*** tie
			B. If 2nd
				1. Turn-1
					a. If   oth_last_turn_corner <-- what
						i. move corner

							a.Turn 2
								if  




	Varibles to set
	@Edges = [1,3,5,7]
	@corners= [0,2,6,8]
	@center= [4]
	@current_move_count = 0
	@went_first = 0

	New methods to create-

		def oth_player_last_turn
			if self == first_player
			(second_player.move(move)) - 1
			else
				(first_player.move(move)) - 1

		end
		
		def went_first
		end

		player
		def current_move_count # tells self what move it's on
			move_count = board_obj.cells.select {|cell| cell == self.token}
			@current_move_count = move_count.size + 1
		end

		def can_player_win? # checks board if win is possible by either player

			looks to see if an win combo arrays are have 1 vacant position
			checks if all tokens are the same i.e all X's or all O's
			if the same returns that token
		end
		
		def oth_last_turn_corner?
			@corners.detect {|corner| Board.cells[corner] == other_player_last_turn? }
		end

		
		def move_block_win
			if can_player_win? ==self.token
				fill token
				can_player_win? == other_player.token
				fill with token
			end

		move_opposite_corner

		def move_corner
			@corners.detect {|corner|  == board_obj.valid_move?(board_obj.cells[corner]) }
			move to corner
		end

	def 0_player_game
		first_player = Computer.new("X")
		second_player = Computer.new("O")
		board = Board.new


	end

=end



