3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
puts "3 Topic created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Sed ut perspiciatis unde omnis ISTE Natus
       lỗi ngồi voluptatem accusantium doloremque laudantium,
       otam rem aperiam, eaque IPSA quae ab illo inventore
       veritatis et quasi architecto beatae Sơ yếu lý Dicta
       sunt explicabo Nemo Enim ipsam voluptatem Quia
       voluptas ngồi aspernatur aut odit aut Fugit, sed Quia.
       Vì vậy, bạn có thể sử dụng các quy định của chúng tôi,
       chúng tôi có thể sử dụng các quy tắc khác nhau của bạn,
       chúng tôi sẽ lưu ý rằng bạn có thể thực hiện các thao
       tác này, lưu ý, adipisci velit, sed quia và không cần
       phải chỉnh sửa và thay thế. , quis nostrum tập thể dục
       ullam corporis suscipit laboriosam, trong đó có thể
       được sử dụng trong các quy tắc của bạn.vel illum qui
       dolorem eum fugiat quo voluptas nulla pariatur? ",
    topic_id: Topic.last.id
  )
end
puts "10 blog post created "
5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skill created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing
        elit, sed do eiusmod tempor incididunt ut labore et dolore
       magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
        ullamco laboris nisi ut aliquip ex ea commodo consequat.
        Duis aute irure dolor in reprehenderit in voluptate velit esse
        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
       cupidatat non proident, sunt in culpa qui officia deserunt mollit
        anim id est   laborum.",
     main_image:  "http://via.placeholder.com/600x400" ,
     thumb_image: "http://via.placeholder.com/350x200"
  )
end
1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing
        elit, sed do eiusmod tempor incididunt ut labore et dolore
       magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
        ullamco laboris nisi ut aliquip ex ea commodo consequat.
        Duis aute irure dolor in reprehenderit in voluptate velit esse
        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
       cupidatat non proident, sunt in culpa qui officia deserunt mollit
        anim id est   laborum.",
     main_image:  "http://via.placeholder.com/600x400" ,
     thumb_image: "http://via.placeholder.com/350x200"
  )
end



puts "9 portfolio item created"
