def substrings(phrase, dictionary)
  striped_phrase = phrase.downcase.gsub(/[[:punct:]]/, "")

  sub_strings =
    dictionary.reduce(Hash.new(0)) do |result, word|
      if striped_phrase.include?(word)
        result[word] += striped_phrase.scan(word).length
      end

      return result
    end

  return sub_strings
end

dictionary = %w[
  below
  down
  go
  going
  horn
  how
  howdy
  it
  i
  low
  own
  part
  partner
  sit
]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
