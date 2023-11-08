
(#%require (lib "27.ss" "srfi"))

(define play_guess
  (lambda (randInt)
    (let loop ((attempts 0))
      (display "Enter Guess: ")
      (define guess (read))
      (cond
        ((= randInt guess)
         (display "Correct! ")
         (display attempts)
         (display " guesses... Please enter your name: ")
         (let ((name (read)))
         (display "Good game, ")
         (display name)))
        ((< randInt guess)
         (display "Lower... Enter guess\n")
         (loop (+ attempts 1)))
        ((> randInt guess)
         (display "Higher... Enter guess\n")
         (loop (+ attempts 1)))))
    ))    
(play_guess (random-integer 100))