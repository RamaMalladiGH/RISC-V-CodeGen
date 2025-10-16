.LBB0_1:
        flw     fa5, 0(a0)
        flw     fa4, 0(a1)
        addi    a0, a0, 4
        fmadd.s fa5, fa0, fa5, fa4
        fsw     fa5, 0(a1)
        addi    a1, a1, 4
        j       .LBB0_1
