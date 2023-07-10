#基本で学んだことの応用

puts %q! ハローワールド! #''で囲った事と同じ扱いになる%q!~!。大文字Qにすると""と同じ。

#複数行の文字を表示したい場合

def some_method
    <<-TEXT
  これはヒアドキュメントです。
  <<-を使うと最後の識別子をインデントさせることができます。
    TEXT
end

puts some_method

name = "Alice"

a = <<TEXT
ようこそ！#{name}さん！
以下のメッセージをご覧ください。
TEXT

puts (a)
  
a = 'Ruby'
a.prepend(<<TEXT) #prependは渡された文字列を先頭に追加するメソッド！
Java
Python
TEXT

puts a

p sprintf('%0.3f',1.2) #指定されたフォーマットの文字列を作成できる

p [10,20,30].join #配列の各要素を連結して１つの文字列にする

puts "\u3042\u3044\u3046" #Unicodeのコードポイントから文字列を作成する。４行でないとダメ。\u{〜}でもかける！

#基数指示子
#８進数
puts 0b11111111 #などと書ける

#2x10-３乗を表している
puts 2e-3

#真偽値と条件分岐の応用

t1 = true
t2 = true
f1 = false

p t1 || t2 && f1
p t1 or t2 and f1 #上記に書いたコードと同じ意味

#&& || 意外を用いた分岐の作り方
def greet(country)
  country or return 'countryを入力してください。'
  
  if country == 'japan'
    'こんにちは'
  else 
    'hello'
  end
end

p greet(nil)
p greet('japan')

#unless文を使うと偽の場合は処理を実行する（ifの反対）

#if式を使った条件分岐　!=で反対を返す
status = 'erroer'
if status != 'ok'
  '何か異常があります'
end

p status

#unlessを使った条件分岐（!=と同じ意味になる）
status = 'erroer'
unless status == 'ok'
  '何か異常があります'
end

p status

status = 'erroer'
message =
unless status == 'ok' #statusがokと同じではなかったらtrueを返す
  '何か異常があります'
else
  '正常です' #statusがokと同じだったらfalseを返す
end

p message

s = ' '
if s.empty?
  '空文字れるです'
end

p s

n = 123456
if !n.zero? == false
  'ゼロではありません'
end

p n

user = nil

if user.nil?
  'nilです'
end

p user

def country
country = 'japan'
#if文
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'Hello'
  elsif country == 'italy'
    'Ciao'
  else
    '???'
  end
end

p country

def county
  #case文
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'Hello'
  when 'italy'
    'Ciao'
  else
    '???'
  end
end

p country

#条件演算子(三項演算子)
#式　？真だった場合　：偽だった場合の処理

def count(n)
  if n > 10
    '10より大きい'
  else
    '10以下'
  end
end
p count(15)

#下の書き方でも上記と同じ意味を与えることができる
#これまでやってきたように変数に代入することもできる
def count2(n)
  n > 10 ? '10より大きい' : '10以下'
end
p count2(6)

#引数として渡す値のデフォルト値の設定
#複数の引数を設定することもできる

#値が入力されなければデフォルトの０を出力する
def default_args(a,b,c =0,d = 0)
  "a=#{a},b=#{b},c=#{c},d=#{d}"
end
p default_args(1, 2)
p default_args(1, 2, 3)

#値が両方入っていなかったら渡された引数を両方に代入する
def point(x,y = x)
  puts "x =#{x}, y=#{y}"
end

point(3)
point(3, 10)

#述語メソッド
#空文字であればtrue,そうでなければfalse
p ''.empty? #true
p 'abc'.empty? #false

#引数の文字列が含まれていればtrue,そうでなければfalse
p 'watch'.include?('at') #true
p 'watch'.include?('nil') #false

#奇数ならtrue,偶数ならfalse
p 1.odd? #true
p 2.odd? #false

#偶数ならtrue,奇数ならfalse
p 1.even? #flase
p 2.even? #true

#オブジェクトがnilであればtrue,それ以外はfalseを返す
p nil.nil? #true
p 'abc'.nil? #false
p 1.nil? #false

#3の倍数ならtrue,それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end
p multiple_of_three?(4) #false
p multiple_of_three?(5) #false
p multiple_of_three?(6) #true

#Javaの勉強（すっきりわかるJava入門）
#配列についてとメソッドの使い方を学習した

#Javaの勉強（すっきりわかるJava入門）
#メソッドの使い方と複数クラスを用いた開発を終わらせた

#7/8javaの勉強（すっきりわかるJava入門）記録し忘れ
#オブジェクト指向を始めよう　途中まで進めた

#7/9javaの勉強（すっきりわかるJava入門）
#オブジェクト指向を始めようを終わらせた