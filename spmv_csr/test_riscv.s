.LBB0_5:
        vsetvli t5, t4, e32, m2, ta, ma
        add     t6, t3, t0
        sh2add  s0, t6, a2
        vle32.v v16, (s0)
        sh2add  s0, t6, a1
        vle32.v v18, (s0)
        vwmulsu.vx      v12, v16, a7
        vluxei64.v      v16, (a4), v12
        sub     t4, t4, t5
        vfmul.vv        v12, v18, v16
        vfredosum.vs    v10, v12, v10
        add     t3, t3, t5
        bnez    t4, .LBB0_5
