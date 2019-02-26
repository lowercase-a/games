class Api::ExamplesController < ApplicationController
  def show_the_fortune
    # make 3 fortunes
    fortunes = ['you will get everything you ask for', 'you will be rich', 'you are good looking']
    @fortune = fortunes.sample
    # get a random one
    # show that to the user
    render 'my_fortune.json.jbuilder'
  end
end
