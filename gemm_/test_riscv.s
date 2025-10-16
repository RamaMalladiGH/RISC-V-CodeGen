.L4:
        vsetvli a5,a4,e8,mf4,ta,ma
        vle32.v v3,0(a0)
        vlse32.v        v2,0(a2),a6
        vsetivli        zero,1,e32,m1,ta,ma
        vfmv.s.f        v1,fa5
        vsetvli zero,a5,e32,m1,ta,ma
        mul     a7,a6,a5
        sub     a4,a4,a5
        vfmul.vv        v2,v2,v3
        sh2add  a0,a5,a0
        vfredosum.vs    v1,v2,v1
        add     a2,a2,a7
        vfmv.f.s        fa5,v1
        bne     a4,zero,.L4
