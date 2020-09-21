use_synth :saw

4.times do
  sample :drum_heavy_kick
  2.times do
    play 81, amp: 2
    play 82, amp: 2
    play 85, amp: 2
    play 90, amp: 2
    sample :elec_blip2, rate: 2
    sleep 0.25
  end
  sample :elec_snare
  4.times do
    sample :drum_tom_mid_soft
    sleep 0.125
  end
end

use_synth :prophet

sleep 1

# live_loop :flibble do
#   sample :bd_haus, rate: 1
#   sleep 0.5
# end
