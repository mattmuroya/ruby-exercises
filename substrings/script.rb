def substrings(string, substrings)
  substrings.reduce({}) do |counts, substr|
    if string.downcase.scan(substr).length > 0
      counts[substr] = string.scan(substr).length
    end
    counts
  end
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

p substrings("Howdy partner, sit down! How's it going?", dictionary)
