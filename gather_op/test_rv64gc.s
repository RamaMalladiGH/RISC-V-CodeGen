.LBB0_2:
        lw      a4, 0(a2)
        slli    a4, a4, 2
        add     a4, a4, a1
        flw     fa5, 0(a4)
        fadd.s  fa5, fa5, fa5
        fsw     fa5, 0(a0)
        addi    a0, a0, 4
        addi    a2, a2, 4
        bne     a0, a3, .LBB0_2
