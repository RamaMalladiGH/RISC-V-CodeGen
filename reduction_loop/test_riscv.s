.L3:
        vsetvli a5,a1,e8,mf4,ta,ma
        vle32.v v1,0(a0)
        vsetivli        zero,1,e32,m1,ta,ma
        vfmv.s.f        v2,fa0
        vsetvli zero,a5,e32,m1,ta,ma
        sub     a1,a1,a5
        sh2add  a0,a5,a0
        vfmul.vv        v1,v1,v1
        vfredosum.vs    v2,v1,v2
        vfmv.f.s        fa0,v2
        bne     a1,zero,.L3
