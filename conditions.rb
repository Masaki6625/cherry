#条件式の練習

t1 = true
f1 = false
p (!t1) #!をつけると結果を反転させることができる　この場合はfalseになる
p (!f1)

n = 9
if n > 10
  p '10より大きい'
else
  p '10より小さい'
end

country = 'japan'

language =
if country == 'japan'
  p 'こんにちは！'
elsif country == 'us'
  p 'Hello!'
elsif country == 'italy'
  p 'Ciao'
else #もしelseがない場合何も代入されずnillが返される
  p '???'
end

p (language) #戻り値が返ってくることを利用し変数に代入もできる


point = 7
day = 1
point *= 5 if day == 1
p (point)

def greet(country)
  return 'countoryを入力してください' if country.nil?

  if country == 'japan'
    puts 'こんにちは！'
  elsif country == 'us'
    puts 'Hello'
  elsif country == 'italy'
    puts 'Caio'
  else
    puts '???'
  end
end

p greet('japan')