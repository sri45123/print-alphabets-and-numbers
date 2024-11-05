
org 100h

ORG 100h           ; Origin for .COM programs

MOV BL, 'a'        ; Start with ASCII value of 'a'
MOV CL, 26         ; Set loop counter to 26 (number of letters in the alphabet)

print_loop:
    MOV DL, BL       ; Move current letter into DL (for display)
    MOV AH, 02h      ; DOS function 02h: Display character in DL
    INT 21h          ; Call DOS interrupt to print character
    
    INC BL           ; Move to the next letter
    LOOP print_loop  ; Repeat until CL reaches 0

MOV AH, 4Ch        ; DOS function 4Ch: Exit program
INT 21h            ; Call DOS interrupt to terminate


ret




