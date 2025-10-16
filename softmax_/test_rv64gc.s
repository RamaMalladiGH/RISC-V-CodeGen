.LBB0_2:
        addi    a1, a1, 4
        fmv.s   fa5, fs0
        beq     a1, a0, .LBB0_5
.LBB0_3:
        flw     fs0, 0(a1)
        flt.s   a3, fa5, fs0
        bnez    a3, .LBB0_2
        fmv.s   fs0, fa5
        j       .LBB0_2
.LBB0_6:
        flw     fa5, 0(s3)
        fsub.s  fa0, fa5, fs0
        call    expf
        fsw     fa0, 0(s0)
        fadd.s  fs1, fs1, fa0
        addi    s0, s0, 4
        addi    s3, s3, 4
        bne     s0, s2, .LBB0_6
.LBB0_7:
        flw     fa5, 0(s1)
        fdiv.s  fa5, fa5, fs1
        fsw     fa5, 0(s1)
        addi    s1, s1, 4
        bne     s1, s2, .LBB0_7
