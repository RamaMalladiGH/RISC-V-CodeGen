.L4:
        vsetvli a5,a2,e32,m1,ta,ma
        vle32.v v1,0(a0)
        sub     a2,a2,a5
        sh2add  a0,a5,a0
        vmfgt.vv        v0,v1,v2
        vmerge.vvm      v1,v2,v1,v0
        vse32.v v1,0(a1)
        sh2add  a1,a5,a1
        bne     a2,zero,.L4
