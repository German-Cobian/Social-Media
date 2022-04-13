require 'swagger_helper'
describe 'API' do

    path '/api/posts' do
        get 'Shows all posts' do
          tags 'Posts'
          produces 'application/json'
    
          response '200', 'show posts' do
            schema type: :object,
            properties: {
              id: { type: :integer } ,
              user_id: { type: :integer },
              content: { type: :string },
              created_at: { type: :string },
              updated_at: { type: :string }
            },
            required: [ 'id', 'user_id', 'content', "created_at", "updated_at" ]
            run_test!
          end
        end 
    end

    path '/api/posts/{post_id}/comments' do

      get 'Retrieves comments on a specific post' do
        tags 'Comments'
        produces 'application/json'
        parameter name: :post_id
  
        response '200', 'show comments' do
          schema type: :object,
          properties: {
            user_id: { type: :integer } ,
            post_id: { type: :integer },
            content: { type: :string },
            created_at: { type: :string },
            updated_at: { type: :string }
          },
            required: [ 'id', 'user_id', 'post_id', 'content', 'created_at', 'updated_at' ]
  
          let(:post_id) { Post.find(post_id).comments}
          run_test!
        end
  
        response '404', 'comments not found' do
          let(:post_id) { 'invalid' }
          run_test!
        end
      end
    end

end