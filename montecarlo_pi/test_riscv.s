.L5:
        mulw    a5,a5,a2
        addw    a5,a1,a5
        slli    a5,a5,33
        srli    a5,a5,33
        mulw    a4,a5,a2
        fcvt.s.w        fa5,a5
        fmul.s  fa5,fa5,fa3
        addw    a5,a1,a4
        slli    a5,a5,33
        srli    a5,a5,33
        fcvt.s.w        fa4,a5
        fmul.s  fa4,fa4,fa3
        fmul.s  fa4,fa4,fa4
        fmadd.s fa5,fa5,fa5,fa4
        fle.s   a4,fa5,fa2
        beq     a4,zero,.L3
        addiw   a6,a6,1
.L3:
        addiw   a3,a3,1
        bne     a0,a3,.L5
