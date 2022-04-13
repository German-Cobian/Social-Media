require 'swagger_helper'
describe 'API' do

    path '/api/posts' do
        post 'Shows all posts' do
          tags 'Posts'
          consumes 'application/json'
          parameter name: :post, in: :body, schema: {
          }
    
          response '200', 'show posts' do
            run_test!
          end
        end 
    end

    path '/api/posts/{post_id}/comments' do

      get 'Retrieves comments on a specific post' do
        tags 'Post', 'Comments'
        produces 'application/json'
        parameter name: :post_id, in: :path, type: :string
  
        response '200', 'show comments' do
          schema type: :object,
            properties: {
              post_id: { type: :integer }
            },
            required: [ 'post_id' ]
  
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