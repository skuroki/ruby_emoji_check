PATTERN = /[\p{Emoji}\p{Emoji_Component}&&[:^ascii:]]/

STRINGS_WITH_EMOJI = [
  '🍣',
  '0️⃣',
  "👩‍👩‍👧‍👧", "☃️", "🇵","🏻", "😴", "▶️", "🛌🏽", "🇵🇹", "🏴󠁧󠁢󠁳󠁣󠁴󠁿", "2️⃣", "🤾🏽‍♀️",
].freeze

STRINGS_WITHOUT_EMOJI = [
  '1aあア＠',
  '東京都江東区新木場２丁目２−１０',
  '黒木　慎介',
].freeze

result = true

STRINGS_WITH_EMOJI.each do |s|
  unless s.match?(PATTERN)
    puts s + 'は絵文字を含むと判定されませんでした'
    result = false
  end
end

STRINGS_WITHOUT_EMOJI.each do |s|
  if s.match?(PATTERN)
    puts s + 'は絵文字を含むと判定されてしまいました'
    result = false
  end
end

if result
  puts '判定は成功しました'
end
