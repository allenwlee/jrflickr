
  File.readlines("words.txt").each do |word|
    Word.create(:text => word)
  end
