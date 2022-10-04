puts "じゃんけんポン！"

def janken
  puts "何を出しますか？"
  puts "0(グー)、1(チョキ)、2(パー)"
  player_hand = gets.to_i
  program_hand = rand(3)
  jankens = ["グー", "チョキ","パー"]
  case_pattern = ""
  puts "--------------"
  puts "あなた:#{jankens[player_hand]}を出しました"
  puts "相手:#{jankens[program_hand]}を出しました"
  puts "--------------"
  
  if player_hand==program_hand
    puts "あいこでショ！"
    return true
  elsif(player_hand==0 && program_hand==1)||(player_hand==1 && program_hand==2)||(player_hand==2 && program_hand==0)
    puts "じゃんけんに勝ちました！あっち向いて・・・"
    case_pattern="パターンA"
  else
    puts "じゃんけんに負けました。あっち向いて・・・"
    case_pattern="パターンB"
  end
  
  case case_pattern
  when "パターンA"
    puts "0(上)、1(下)、2(左)、3(右)"
    player_hand2 = gets.to_i
    program_face = rand(4)
    directions = ["上", "下","左","右"]
    puts "ホイ！"
    puts "--------------"
    puts "あなた:#{directions[player_hand2]}を出しました"
    puts "相手:#{directions[program_face]}を出しました"
    puts "--------------"
    if player_hand2==program_face
      puts "結果：あなたの勝ちです！"
    else
      puts "勝負がつきませんでした。もう一度じゃんけんをします。"
      return true
    end
  when "パターンB"
    puts "0(上)、1(下)、2(左)、3(右)"
    player_face = gets.to_i
    program_hand2 = rand(4)
    directions = ["上", "下","左","右"]
    puts "ホイ！"
    puts "--------------"
    puts "あなた:#{directions[player_face]}を出しました"
    puts "相手:#{directions[program_hand2]}を出しました"
    puts "--------------"
    if player_face==program_hand2
      puts "結果：あなたの負けです。"
    else
      puts "勝負がつきませんでした。もう一度じゃんけんをします。"
      return true
    end
  end
end

next_game=true

while next_game
  next_game=janken
end