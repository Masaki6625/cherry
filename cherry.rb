#ルビーの基本練習

=begin
こんなコメントの
書き方は初めて知ったぞ！！
=end
puts "こんにちは！"

a,b = 1,2
puts (b)

c,d = 10
puts (d) #右辺の方が少ないとnillになる

e,f = 100,200,300
puts (f) #もし右辺が大きすぎる場合は切られる

first_name, _ = 'Scott Tiger'.split(' ') #.split(' １マス開ける')で後ろを使用しないようにできる
puts first_name

c = 'hello'
d = 'hello'
c.upcase! #upcase!で大文字にできる！
puts (c)

p 'こんにちは！\nさようなら！' #\nで改行できる。ただし''では文字列としてそのまま出てくる！　pとかくとputsを省略できる！

n = 200
p (-n)