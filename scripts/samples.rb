###########################################
## Ponencia para  Flisol Guayaquil en Mz14
##  1 de junio 2024
## @jeanmadara
############################################

# #. samples

solenoids = "C:/Users/jean_/Desktop/samples"
use_bpm 80

live_loop :solenoid1 do
  
  sample solenoids, "river", beat_stretch: 32, amp: 2
  sleep 4
end


live_loop :bombo do
  with_fx :reverb ,mix: 0.5,room: 0.8 do
    2.times do
      sample :drum_bass_hard, amp: rrand(0.9,1.25)
      sleep 1
    end
    2.times do
      sample :drum_bass_hard, amp: rrand(0.9,1.25)
      sleep 0.5
    end
    sample :drum_bass_hard, amp: rrand(0.9,1.25)
    sleep 1
    
  end
end

