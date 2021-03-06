PATTERN = /[\p{Emoji}\p{Emoji_Component}&&[:^ascii:]]/

STRINGS_WITH_EMOJI = [
  'š£',
  '0ļøā£',
  "š©āš©āš§āš§", "āļø", "šµ","š»", "š“", "ā¶ļø", "šš½", "šµš¹", "š“ó §ó ¢ó ³ó £ó “ó æ", "2ļøā£", "š¤¾š½āāļø",
].freeze

STRINGS_WITHOUT_EMOJI = [
  '1aćć¢ļ¼ ',
  'ę±äŗ¬é½ę±ę±åŗę°ęØå “ļ¼äøē®ļ¼āļ¼ļ¼',
  'é»ęØćęä»',
].freeze

result = true

STRINGS_WITH_EMOJI.each do |s|
  unless s.match?(PATTERN)
    puts s + 'ćÆēµµęå­ćå«ććØå¤å®ććć¾ććć§ćć'
    result = false
  end
end

STRINGS_WITHOUT_EMOJI.each do |s|
  if s.match?(PATTERN)
    puts s + 'ćÆēµµęå­ćå«ććØå¤å®ććć¦ćć¾ćć¾ćć'
    result = false
  end
end

if result
  puts 'å¤å®ćÆęåćć¾ćć'
end
