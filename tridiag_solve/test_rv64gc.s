.LBB0_2:
        flw     fa3, 0(s5)
        flw     fa2, 0(s6)
        flw     fa1, 0(s8)
        flw     fa0, 0(s7)
        fnmsub.s        fa3, fa2, fa5, fa3
        fnmsub.s        fa4, fa2, fa4, fa1
        fdiv.s  fa5, fa0, fa3
        fdiv.s  fa4, fa4, fa3
        addi    s8, s8, 4
        addi    s7, s7, 4
        fsw     fa5, 0(a2)
        fsw     fa4, 0(a1)
        addi    a1, a1, 4
        addi    a2, a2, 4
        addi    s6, s6, 4
        addi    s5, s5, 4
        bne     a1, a3, .LBB0_2
.LBB0_4:
        flw     fa4, 0(a2)
        flw     fa3, 0(a1)
        addi    a1, a1, -4
        addi    a2, a2, -4
        fnmsub.s        fa5, fa3, fa5, fa4
        fsw     fa5, 0(s2)
        addi    s2, s2, -4
        bne     a1, a3, .LBB0_4
