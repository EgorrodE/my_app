# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
# . . .

Book.create!(title: 'Harry Potter #2',
             content:
                 %{<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget diam eros. In fermentum elit eget ipsum viverra malesuada. Phasellus posuere luctus velit eu varius. Pellentesque condimentum consequat orci sit amet porttitor. Fusce gravida, dui sed tincidunt laoreet, felis libero aliquet neque, at sodales velit tellus at nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse porta arcu vitae diam convallis condimentum. Donec purus diam, tincidunt eu sodales ut, cursus in magna. Maecenas eu tincidunt felis. Integer ac erat vel justo faucibus vulputate vitae eu augue. Aliquam faucibus lacus non risus convallis feugiat. Vivamus ac arcu finibus, tempus orci eget, laoreet lectus. Sed euismod odio ut congue vehicula. Cras interdum massa non vehicula pulvinar. Maecenas vulputate venenatis neque, sed aliquam enim ultricies eu.

Suspendisse posuere mollis consectetur. Morbi ut ante venenatis, faucibus nibh sed, dapibus magna. Nulla facilisi. Curabitur egestas, velit non pretium vehicula, turpis leo congue mauris, vitae accumsan dolor lectus non nibh. Cras eu ante urna. Maecenas volutpat sollicitudin pulvinar. Mauris sodales metus sit amet magna mattis lacinia. Integer vitae tristique dui.

Sed nec lorem et augue iaculis ultricies sed vel turpis. Nulla scelerisque porttitor quam at vulputate. Suspendisse accumsan nisi in pretium ultricies. Donec id neque feugiat, vulputate risus id, venenatis nunc. Suspendisse ullamcorper enim eget ullamcorper dictum. Nunc euismod, felis sed rhoncus bibendum, purus dolor aliquet dolor, eget ultricies sem eros at elit. Suspendisse et lacus vel ex elementum tempus. Nam tempor purus non metus semper commodo. Ut arcu arcu, varius ac lectus sit amet, vestibulum efficitur turpis. In euismod libero sit amet pretium volutpat.

Maecenas aliquam lacinia enim non ullamcorper. Aliquam dapibus facilisis tortor, eu dictum tortor maximus ac.
</p>},
             image_url: 'harry2.jpg',
             author_id:1)
Book.create!(title: 'Harry Potter #3',
             content:
                 %{<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget diam eros. In fermentum elit eget ipsum viverra malesuada. Phasellus posuere luctus velit eu varius. Pellentesque condimentum consequat orci sit amet porttitor. Fusce gravida, dui sed tincidunt laoreet, felis libero aliquet neque, at sodales velit tellus at nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse porta arcu vitae diam convallis condimentum. Donec purus diam, tincidunt eu sodales ut, cursus in magna. Maecenas eu tincidunt felis. Integer ac erat vel justo faucibus vulputate vitae eu augue. Aliquam faucibus lacus non risus convallis feugiat. Vivamus ac arcu finibus, tempus orci eget, laoreet lectus. Sed euismod odio ut congue vehicula. Cras interdum massa non vehicula pulvinar. Maecenas vulputate venenatis neque, sed aliquam enim ultricies eu.

Suspendisse posuere mollis consectetur. Morbi ut ante venenatis, faucibus nibh sed, dapibus magna. Nulla facilisi. Curabitur egestas, velit non pretium vehicula, turpis leo congue mauris, vitae accumsan dolor lectus non nibh. Cras eu ante urna. Maecenas volutpat sollicitudin pulvinar. Mauris sodales metus sit amet magna mattis lacinia. Integer vitae tristique dui.

Sed nec lorem et augue iaculis ultricies sed vel turpis. Nulla scelerisque porttitor quam at vulputate. Suspendisse accumsan nisi in pretium ultricies. Donec id neque feugiat, vulputate risus id, venenatis nunc. Suspendisse ullamcorper enim eget ullamcorper dictum. Nunc euismod, felis sed rhoncus bibendum, purus dolor aliquet dolor, eget ultricies sem eros at elit. Suspendisse et lacus vel ex elementum tempus. Nam tempor purus non metus semper commodo. Ut arcu arcu, varius ac lectus sit amet, vestibulum efficitur turpis. In euismod libero sit amet pretium volutpat.

Maecenas aliquam lacinia enim non ullamcorper. Aliquam dapibus facilisis tortor, eu dictum tortor maximus ac.
</p>},
             image_url: 'harry1.jpg',
             author_id:1)
Book.create!(title: 'Harry Potter #4',
             content:
                 %{<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget diam eros. In fermentum elit eget ipsum viverra malesuada. Phasellus posuere luctus velit eu varius. Pellentesque condimentum consequat orci sit amet porttitor. Fusce gravida, dui sed tincidunt laoreet, felis libero aliquet neque, at sodales velit tellus at nisl. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse porta arcu vitae diam convallis condimentum. Donec purus diam, tincidunt eu sodales ut, cursus in magna. Maecenas eu tincidunt felis. Integer ac erat vel justo faucibus vulputate vitae eu augue. Aliquam faucibus lacus non risus convallis feugiat. Vivamus ac arcu finibus, tempus orci eget, laoreet lectus. Sed euismod odio ut congue vehicula. Cras interdum massa non vehicula pulvinar. Maecenas vulputate venenatis neque, sed aliquam enim ultricies eu.

Suspendisse posuere mollis consectetur. Morbi ut ante venenatis, faucibus nibh sed, dapibus magna. Nulla facilisi. Curabitur egestas, velit non pretium vehicula, turpis leo congue mauris, vitae accumsan dolor lectus non nibh. Cras eu ante urna. Maecenas volutpat sollicitudin pulvinar. Mauris sodales metus sit amet magna mattis lacinia. Integer vitae tristique dui.

Sed nec lorem et augue iaculis ultricies sed vel turpis. Nulla scelerisque porttitor quam at vulputate. Suspendisse accumsan nisi in pretium ultricies. Donec id neque feugiat, vulputate risus id, venenatis nunc. Suspendisse ullamcorper enim eget ullamcorper dictum. Nunc euismod, felis sed rhoncus bibendum, purus dolor aliquet dolor, eget ultricies sem eros at elit. Suspendisse et lacus vel ex elementum tempus. Nam tempor purus non metus semper commodo. Ut arcu arcu, varius ac lectus sit amet, vestibulum efficitur turpis. In euismod libero sit amet pretium volutpat.

Maecenas aliquam lacinia enim non ullamcorper. Aliquam dapibus facilisis tortor, eu dictum tortor maximus ac.
</p>},
             image_url: 'harry1.jpg',
             author_id:2)
