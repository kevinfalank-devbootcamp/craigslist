get '/' do

  @cats = Category.all_categories
  erb :category
end

get '/posts/:category_id' do
  @category_id = params[:category_id]
  @posts = Post.list_posts(@category_id)
  erb :posts
  end

get '/single_post/:post_id' do
  @post_id = params[:post_id]
  @post = Post.single_post(@post_id)
  erb :post
end

get '/create/:category_id' do
  @cat_id = params[:category_id]
  erb :new_post
end

post '/create' do
  @name = params[:name]
  @price = params[:price]
  @email = params[:email]
  @description = params[:description]
  @category_id = params[:category_id]
  new_post = Post.new(name: @name, price: @price, email: @email, description: @description, category_id: @category_id, key: Post.create_key)
  new_post.save
  @id = new_post.id
  @key = new_post.key
  erb :secret_link

end

get '/update/:id/:key' do
  @id = params[:id]
  @key = params[:key]
  @post = Post.single_post(@id)
  if @key == @post.key
    erb :update_post
  else
    redirect '/posts/' + @post.category_id
  end
end

post '/update' do
  @id = params[:id]
  @name = params[:name]
  @price = params[:price]
  @email = params[:email]
  @description = params[:description]
  @cat_id = params[:category_id]
  original_post = Post.single_post(@id)
  original_post.name = @name
  original_post.price = @price
  original_post.email = @email
  original_post.description = @description
  original_post.save
  redirect '/posts/' + @cat_id
end












