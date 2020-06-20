class Author

    attr_accessor :name

    def initialize(name)

        @name = name
        @posts = []

    end

    def posts

        Post.all.select  {|post| post.author = self} 
        
    end

    def add_post(post)

        @posts << post
        post.author = self

    end

    def add_post_by_title(title)

        writer = Post.new(title)        
        add_post(writer)

    end

    def self.post_count

        count = 0
        Post.all.each do |posts|
            count += 1
        end
        
        count
    end




end