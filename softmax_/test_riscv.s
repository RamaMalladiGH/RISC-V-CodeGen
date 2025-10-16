.L5:
        flw     fa4,0(a5)
        fmv.s   fs0,fa5
        addi    a5,a5,4
        fgt.s   a4,fa4,fa5
        beq     a4,zero,.L4
        fmv.s   fs0,fa4
.L4:
        fmv.s   fa5,fs0
        bne     a5,s4,.L5
        fmv.s.x fs1,zero
        mv      s3,s2
.L6:
        flw     fa0,0(s1)
        addi    s1,s1,4
        addi    s3,s3,4
        fsub.s  fa0,fa0,fs0
        call    expf
        fsw     fa0,-4(s3)
        fadd.s  fs1,fs1,fa0
        bne     s1,s4,.L6
        vsetvli a5,zero,e32,m1,ta,ma
        vfmv.v.f        v2,fs1
        mv      a4,s2
.L7:
        vsetvli a5,s0,e32,m1,ta,ma
        vle32.v v1,0(s2)
        sub     s0,s0,a5
        sh2add  s2,a5,s2
        vfdiv.vv        v1,v1,v2
        vse32.v v1,0(a4)
        sh2add  a4,a5,a4
        bne     s0,zero,.L7
