.L3:
        flw     fa2,0(a1)
        flw     fa4,0(a2)
        flw     fa0,0(a4)
        flw     fa1,0(a3)
        fnmsub.s        fa4,fa2,fa3,fa4
        fnmsub.s        fa5,fa2,fa5,fa0
        addi    a2,a2,4
        addi    a1,a1,4
        addi    a4,a4,4
        fdiv.s  fa3,fa1,fa4
        addi    a3,a3,4
        addi    a6,a6,4
        addi    a0,a0,4
        fdiv.s  fa5,fa5,fa4
        fsw     fa3,-4(a6)
        fsw     fa5,-4(a0)
        bne     a5,a2,.L3
.L6:
        flw     fa3,0(a4)
        flw     fa4,-8(a0)
        addi    a0,a0,-4
        addi    a4,a4,-4
        fnmsub.s        fa5,fa3,fa5,fa4
        addi    a5,a5,-4
        fsw     fa5,4(a5)
        bne     a0,a3,.L6
