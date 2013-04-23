get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  # p params[:word]
  # @w = Word.where(text: params[:word])
  # p @w
  # w.anagrams
  @w = Word.anagrams(params[:word])
  # @w = params[:word]
  erb :index
end
