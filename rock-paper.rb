def janken 
puts "ジャンケン〜"
puts "0:グー1:チョキ2:パー"
player = gets.to_i #自分の手を入力するとコンソール上に返すメソッド

program = rand(2) #ランダムに値を表示するメソッド
#          0.       1.     2.  
jankens=["グー","チョキ","パー"] #jankens配列に出す手を文字列で格納する

puts "あなたは#{jankens[player]}を出しました"
puts "相手は#{jankens[program]}を出しました"

case_pattern = ""

if player == program
  puts "-----------------"
  puts "あいこです"
  return true
elsif (player == 0 && program == 1) || (player == 1 && program == 2) || (player == 2 && program == 0)
  case_pattern = "自分が勝った場合"
else
  case_pattern = "自分が負けた場合"
end  

case case_pattern
when "自分が勝った場合"
  puts "あっち向いて〜"
  puts "0:上1:右2:下3:左"
player_hand = gets.to_i

program_hand = rand(3)

directions =["上","右","下","左"]
puts "あなた:手:#{directions[player_hand]}"
puts "相手:顔:#{directions[program_hand]}"

if player_hand == program_hand
  puts "----------------"
  puts "あなたの勝ちです"
  return false
else 
  return true
end
when "自分が負けた場合"
  puts "あっち向いて〜"
  puts "0:上1:右2:下3:左"
player_hand = gets.to_i

program_hand = rand(3)

directions =["上","右","下","左"]
puts "あなた:顔:#{directions[player_hand]}"
puts "相手:手:#{directions[program_hand]}"
  if player_hand != program_hand
    return true
  else 
    puts "----------------"
    puts "あなたの負けです"
    return false
  end
end
end

next_game = ""

while next_game
  
  next_game = janken
  
end