def acct_groups(names)
  if names.length > 5
    group = []
    group = names.each_slice(5).to_a
    p group
  end
end

acct_groups(["John","Lisa","Annie","James", "Peter", "Daniel", "Tom", "Paul", "Lara", "Emily", "Andrew", "Tim", "Ray", "Pat", "Jenna", "Kim", "Ben", "Rita", "Wes", "Archie", "Don", "Calvin", "Jason"])