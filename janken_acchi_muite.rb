def acchi_muite (player_direction,computer_direction)
    direction = { 0 => "上", 1 => "下", 2 => "右", 3 =>"左" }

    puts "ホイ!"
    sleep(1)
    puts "-------------------------------"
    puts "あなた：#{direction[player_direction]}"
    puts "相手：#{direction[computer_direction]}"
    puts "-------------------------------"
end

loop do
    puts "じゃんけん..."
    puts "0(グー),1(チョキ),2(パー),3(戦わない)"

    player_choice = nil
    loop do 
        input = gets.chomp
        if input.match?(/\A\d+\z/)
            player_choice = input.to_i
            break if [0,1,2,3].include? player_choice
        end
        puts "0~3の数字を入力してください。"
    end

    computer_choice = rand(0..2)

    if player_choice == 3
        puts "ゲームを終了します"
        exit
    end

    hands = { 0 => "グー", 1 => "チョキ", 2 => "パー", }

    puts "ホイ!"
    sleep(1)
    puts "-------------------------------"
    puts "あなた：#{hands[player_choice]}を出しました"
    puts "相手：#{hands[computer_choice]}を出しました"
    puts "-------------------------------"


    if player_choice == computer_choice
        puts "あいこです！"
        next
    end

    if(player_choice == 0 && computer_choice == 1) ||
    (player_choice == 1 && computer_choice == 2) ||
    (player_choice == 2 && computer_choice == 3)

    puts "じゃんけんに勝ちました！指はどちらに向けますか？"
    puts "あっち向いて〜"
    puts "0(上),1(下),2(左),3(右)"

    player_direction = nil
    loop do 
        input = gets.chomp
        if input.match?(/\A\d+\z/)
            player_direction = input.to_i
            break if [0,1,2,3].include? player_direction
        end
        puts "0~3の数字を入力してください。"
    end

    computer_direction = rand(0..3)

    acchi_muite(player_direction,computer_direction)

    if (player_direction == computer_direction)
        puts "勝利です！"
        break
    else
        puts "勝敗がつきませんでした。じゃんけんに戻ります。"
        next
    end

    else
    puts "じゃんけんに負けました。顔はどちらに向けますか？"
    puts "あっち向いて〜"
    puts "0(上),1(下),2(左),3(右)"
    
    player_direction = nil
    loop do 
        input = gets.chomp
        if input.match?(/\A\d+\z/)
            player_direction = input.to_i
            break if [0,1,2,3].include? player_direction
        end
        puts "0~3の数字を入力してください。"
    end

    computer_direction = rand(0..3)

    acchi_muite(player_direction,computer_direction)

    if (player_direction == computer_direction)
        puts "負けました..."
        break
    else
        puts "勝敗がつきませんでした。じゃんけんに戻ります。"
        next
    end

    end

end

