.L3:
        vsetvli a5,a2,e8,mf4,ta,ma
        vle32.v v3,0(a0)
        vle32.v v2,0(a1)
        vsetivli        zero,1,e32,m1,ta,ma
        vfmv.s.f        v1,fa0
        vsetvli zero,a5,e32,m1,ta,ma
        sub     a2,a2,a5
        sh2add  a0,a5,a0
        vfmul.vv        v2,v2,v3
        sh2add  a1,a5,a1
        vfredosum.vs    v1,v2,v1
        vfmv.f.s        fa0,v1
        bne     a2,zero,.L3
