use_synth :saw

in_thread(name: :main) do
  loop do
    sample :drum_heavy_kick
    2.times do
      if one_in(3)
        play 81, amp: 0.2
        play 82, amp: 0.2
        play 85, amp: 0.2
        play 90, amp: 0.2
      end
      sample :elec_blip2, rate: 2 if one_in(2)
      sample :elec_blip2, rate: 1 if one_in(3)
      sleep 0.25
    end
    sample :elec_snare
    4.times do
      sample :drum_tom_mid_soft
      sleep 0.125
    end
  end
end

in_thread do
  loop do
    sample :loop_amen
    sleep sample_duration :loop_amen
  end
end

# live_loop :flibble do
#   sample :bd_haus, rate: 1
#   sleep 0.5
# end
