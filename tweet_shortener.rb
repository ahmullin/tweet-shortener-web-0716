def word_substituter(tweet_one)

dictionary = {
 "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&"
  }

tweet_one_array = tweet_one.split(" ")
tweet_one_array.collect do |word|
  dictionary.each do |key, value|
    word = value if word.downcase == key
    end
    word
  end.join(" ")
end

#fix punctuation

def bulk_tweet_shortener(tweet_one_array)
  dictionary = {
 "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&"
  }


  tweet_one_array.collect do |tweet|
    puts word_substituter(tweet)
  end
  
end


def selective_tweet_shortener(tweet_one)
  dictionary = {
 "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&"
  }
  
  if tweet_one.length > 140
    tweet_one_array = tweet_one.split(" ")
    tweet_one_array.collect do |word|
      word_substituter(word)
    end
    else
      tweet_one
  end

  end

  #passes test but need to fix


def shortened_tweet_truncator(tweet_one)
  if tweet_one.length > 140
    tweet_one[0..139] 
  else
    tweet_one
  end
end 



