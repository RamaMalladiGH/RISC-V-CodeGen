.LBB0_2:
        flw     fa5, 0(a0)
        flw     fa4, 0(a1)
        addi    a1, a1, 4
        fmadd.s fa0, fa5, fa4, fa0
        addi    a0, a0, 4
        bne     a1, a2, .LBB0_2
