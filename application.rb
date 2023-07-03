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