Dir[File.dirname(__FILE__) + '/solution/**/*.rb'].each {|file| require file }

module Solution
	HANDS_BY_RANK = [
		StraightFlush,
		FourOfAKind,
		FullHouse,
		Flush,
		Straight,
		ThreeOfAKind,
		TwoPair,
		OnePair,
		HighCard
	]
end
