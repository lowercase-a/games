class Api::ExamplesController < ApplicationController
  def show_the_fortune
    # make 3 fortunes
    fortunes = ['you will get everything you ask for', 'you will be rich', 'you are good looking']
    @fortune = fortunes.sample
    # get a random one
    # show that to the user
    render 'my_fortune.json.jbuilder'
  end

  def lottery
    # return 6 random numbers between 1 and 60 (inclusive)
    # make an array
    @numbers = []
    # make something that loops 6 times
    6.times do
      # inside the loop, add in a random number to the array
      # make it static first
      @numbers << rand(60) + 1
    end

    render 'my_lottery.json.jbuilder'
  end
end
