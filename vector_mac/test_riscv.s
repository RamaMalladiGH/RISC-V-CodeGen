.L3:
        vsetvli a5,a2,e32,m1,ta,ma
        vle32.v v2,0(a1)
        vle32.v v1,0(a0)
        sub     a2,a2,a5
        sh2add  a1,a5,a1
        sh2add  a0,a5,a0
        vfmadd.vv       v1,v3,v2
        vse32.v v1,0(a4)
        sh2add  a4,a5,a4
        j       .L3
