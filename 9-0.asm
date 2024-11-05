; Program to print numbers 9 to 0
org 100h            ; Set starting point for .COM programs

mov cx, 10          ; Set loop counter to 10 (for numbers 9 to 0)
mov dl, '9'         ; Initialize DL with ASCII code for '9'

print_reverse_loop:
    mov ah, 02h     ; Function to print character in DL
    int 21h         ; Call DOS interrupt to display character
    dec dl          ; Decrement DL to get the previous number
    loop print_reverse_loop ; Loop until CX is zero

mov ah, 4Ch         ; Exit program
int 21h

; Program to print characters A to Z
org 100h            ; Set starting point for .COM programs

mov cx, 26          ; Set loop counter to 26 (for letters A to Z)
mov dl, 'A'         ; Initialize DL with ASCII code for 'A'

print_char_loop:
    mov ah, 02h     ; Function to print character in DL
    int 21h         ; Call DOS interrupt to display character
    inc dl          ; Increment DL to get next letter
    loop print_char_loop ; Loop until CX is zero

mov ah, 4Ch         ; Exit program
int 21h   

; Program to print characters A to Z in reverse order
org 100h            ; Set starting point for .COM programs

mov cx, 26          ; Set loop counter to 26 (for characters A to Z)
mov dl, 'Z'         ; Initialize DL with ASCII code for 'Z'

print_loop:
    mov ah, 02h     ; Function to print character in DL
    int 21h         ; Call DOS interrupt to display character
    dec dl          ; Decrement DL to get the previous character
    loop print_loop ; Loop until CX is zero

mov ah, 4Ch         ; Exit program
int 21h

; Program to print numbers 0 to 9
org 100h            ; Set starting point for .COM programs

mov cx, 10          ; Set loop counter to 10 (for numbers 0 to 9)
mov dl, '0'         ; Initialize DL with ASCII code for '0'

print_loop:
    mov ah, 02h     ; Function to print character in DL
    int 21h         ; Call DOS interrupt to display character
    inc dl          ; Increment DL to get next number
    loop print_loop ; Loop until CX is zero

mov ah, 4Ch         ; Exit program
int 21h