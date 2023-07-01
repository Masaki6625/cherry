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

