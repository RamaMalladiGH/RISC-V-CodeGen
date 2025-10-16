.LBB0_2:
        flw     fa4, 0(a0)
        fmax.s  fa4, fa4, fa5
        fsw     fa4, 0(a1)
        addi    a1, a1, 4
        addi    a0, a0, 4
        bne     a1, a2, .LBB0_2
