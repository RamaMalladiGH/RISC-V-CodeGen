.LBB0_4:
        flw     fa3, 0(a4)
        flw     fa2, 0(a5)
        addi    a4, a4, 4
        fmadd.s fa4, fa3, fa2, fa4
        add     a5, a5, t3
        bne     a4, t4, .LBB0_4
