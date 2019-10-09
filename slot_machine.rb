class SlotMachine
  OPTIONS = %w(cherry seven bell star joker)
  # define score(reels)
  def score(reels) # array
    if reels.uniq.size == 1 # all the same
      (OPTIONS.index(reels.first) + 1) * 10 # for score
    elsif reels.uniq.size == 2 && reels.include?('joker')
      (OPTIONS.index(reels.sort[1]) + 1) * 5 # score
    else
      return 0
    end
  end
  # test uniqueness and length of reels array
  # if line 5 == 3, return 0
  # if line 5 == 1, return index * 10
  # if line 5 == 2 and reel includes joker, do below and divide by 2
  # pass to options array and get index
  # save indexes to
  # add one to index and multiply by 10
end
