.LBB0_2:
        flw     fa5, 0(a0)
        addi    a0, a0, 4
        fmadd.s fa0, fa5, fa5, fa0
        bne     a0, a1, .LBB0_2
