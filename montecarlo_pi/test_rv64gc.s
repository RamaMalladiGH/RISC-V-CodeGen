.LBB0_2:
        mul     a4, a4, a7
        add     a4, a4, a2
        and     a3, a4, a6
        mul     a4, a4, a7
        fcvt.s.wu       fa3, a3
        add     a4, a4, a2
        fmul.s  fa3, fa3, fa5
        and     a4, a4, a6
        fcvt.s.wu       fa2, a4
        fmul.s  fa2, fa2, fa5
        fmul.s  fa2, fa2, fa2
        fmadd.s fa3, fa3, fa3, fa2
        fle.s   a3, fa3, fa4
        addiw   a5, a5, -1
        add     a1, a1, a3
        bnez    a5, .LBB0_2
