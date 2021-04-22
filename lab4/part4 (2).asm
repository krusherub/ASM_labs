TITLE Lab-4

IDEAL
MODEL SMALL
STACK 256
;-------------------------------II.МАКРОСИ-------------------------------------
                    ; Макрос для ініціалізації
MACRO M_Init		; Початок макросу 
    mov     ax,@data
    mov     ds,ax   ; ds = data segment
    mov     es,ax   ; es = text VRAM segment for direct VRAM writes
ENDM M_Init			; Кінець макросу

;----------------------III.ПОЧАТОК СЕГМЕНТУ ДАНИХ------------------------------
DATASEG
moreMatrix dw 2,0,0,2, 1,2, 1,2, 2,0,0,2, 0,5, 1,1, 2,0,0,3, 0,3, 2,2
;-----------------------VI. ПОЧАТОК СЕГМЕНТУ КОДУ-------------------------------
CODESEG

Start:	
M_Init

xor si, si
mov cx, 18
stack1: 
	mov ax, [ds:[si]]
	add si,2
	mov [bp], ax
	loop stack1	
		
end Start