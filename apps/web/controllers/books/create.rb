module Web::Controllers::Books
  class Create
    include Web::Action

    def call(params)
      repo = BookRepository.new
      repo.create(params[:book])

      redirect_to '/books'
    end
  end
end
