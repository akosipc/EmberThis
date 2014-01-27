require 'machinist/active_record'

Post.blueprint do
  title { "Post #{sn}" }
  body  { "Lorem ipsum..." }
end
