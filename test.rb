# in_thread do
#   loop do
#     sample :ambi_drone, rate: 0.5
#     sample :ambi_drone, rate: 1
#     sleep sample_duration :ambi_drone, rate: 0.5
#   end
# end

# in_thread do
#   loop do
#     sample :loop_amen, rate: -0.5
#     sample :loop_amen, rate: 0.5
#     sleep sample_duration :loop_amen, rate: -0.5
#   end
# end

# in_thread do
#   loop do
#     sample :loop_amen, rate: 0.25, attack: 2
#     sample :loop_amen, rate: -0.125, attack: 1, attack_level: 1, decay: 0.5, decay_level: 0.5, release: 1, amp: 2
#     sleep 1
#   end
# end

sample :loop_amen, start: 0.5, finish: 0.7, rate: 0.2

sample :drum_cymbal_open
sleep 2

sample :drum_cymbal_open, attack: 0.01, sustain: 0, release: 0.1, rate: 0.4
sleep 2

sample :drum_cymbal_open, attack: 0.01, sustain: 0.3, release: 0.1, rate: 1.2
sleep 2

use_synth :prophet

 # in_thread do
 #   loop do
 #     play 65, attack: 0.5, attack_level: 1, decay: 0.5, sustain_level: 0.4, sustain: 2, release: 1, amp: 1
 #     if one_in(5)
 #       play 65, attack: 0.5, sustain: 2, release: 1, amp: 0.4
 #       play 65, attack: 0.5, sustain: 2, release: 1, amp: 0.2
 #     end
 #     if one_in(7)
 #       play 70, attack: 0.5, release: 3
 #       play 72, attack: 0.1, release: 2
 #     end
 #     if one_in(2)
 #       play 73, attack: 4, release: 0.2, amp: 0.4
 #     end
 #     sleep 4
 #   end
# end


# in_thread(name: :main) do
#   loop do
#     sample :drum_heavy_kick
#     2.times do
#       if one_in(3)
#         play 81, amp: 0.2
#         play 82, amp: 0.2
#         play 85, amp: 0.2
#         play 90, amp: 0.2
#       end
#       sample :elec_blip2, rate: 2 if one_in(2)
#       sample :elec_blip2, rate: 1 if one_in(3)
#       sleep 0.25
#     end
#     sample :elec_snare
#     4.times do
#       sample :drum_tom_mid_soft
#       sleep 0.125
#     end
#   end
# end

# live_loop :flibble do
#   sample :bd_haus, rate: 8
#   sleep 0.4
# end
