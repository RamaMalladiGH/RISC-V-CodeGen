.L3:
        lw      a5,0(a2)
        addi    a2,a2,4
        addi    a0,a0,4
        sh2add  a5,a5,a1
        flw     fa5,0(a5)
        fadd.s  fa5,fa5,fa5
        fsw     fa5,-4(a0)
        bne     a3,a2,.L3
