.LBB0_5:
        lw      t4, 0(t2)
        flw     fa3, 0(t1)
        slli    t4, t4, 2
        add     t4, t4, a4
        flw     fa2, 0(t4)
        addi    t1, t1, 4
        fmadd.s fa4, fa3, fa2, fa4
        addi    t2, t2, 4
        bne     t1, t3, .LBB0_5
