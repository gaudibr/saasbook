class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    rps_value = {'R'=> 3,'S'=> 2, 'P'=> 1}
    raise NoSuchStrategyError.new("Strategy must be one of R,P,S") if (!rps_value.has_key?(player1.last) || !rps_value.has_key?(player2.last))

    return ((rps_value[player1.last] - rps_value[player2.last]) %3 <= 1) ? player1 : player2
  end

  def self.tournament_winner(tournament)
    begin
      return self.winner(tournament.first,tournament.last)
    rescue NoSuchStrategyError => e
      return self.winner(tournament_winner(tournament.first),tournament_winner(tournament.last))
    end
  end

end
