def substrings(phrase, dictionary)
  striped_phrase = phrase.downcase.gsub(/[[:punct:]]/, "").split("")

  sub_strings =
    dictionary.reduce(Hash.new(0)) do |result, word|
      split_word = word.split("")

      striped_phrase.each_with_index do |letter, index|
        if letter == split_word[0]
          temp_word = striped_phrase[index, split_word.length]
        end

        result[word] += 1 if temp_word == split_word
      end

      result
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

substrings("Howdy partner, sit down! How's it going?", dictionary) ==
  {
    "down" => 1,
    "go" => 1,
    "going" => 1,
    "how" => 2,
    "howdy" => 1,
    "it" => 2,
    "i" => 3,
    "own" => 1,
    "part" => 1,
    "partner" => 1,
    "sit" => 1,
  }
