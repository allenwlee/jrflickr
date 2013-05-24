get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/word' do
  # p params[:word]
  @w = Word.anagrams(params[:word])
  # p @w
  # w.anagrams
    # @w = params[:word]
  erb :index
end
