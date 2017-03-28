% badFlag/2

badFlag(bs,'-fsched-interblock').
badFlag(bubblesort,'-fgcse').
badFlag(cover,'-freorder-blocks').
badFlag(cover,'-fschedule-insns').
badFlag(cover,'-fschedule-insns2').
badFlag('ctl-stack','-fschedule-insns2').
badFlag('ctl-stack','-ftree-fre').
badFlag(duff,'-fsched-critical-path-heuristic').
badFlag(duff,'-fselective-scheduling').
badFlag(expint,'-finline').
badFlag(expint,'-fmove-loop-invariants').
badFlag(expint,'-frerun-cse-after-loop').
badFlag(expint,'-ftree-loop-im').
badFlag(expint,'-ftree-vrp').
badFlag(fac,'-fschedule-insns2').
badFlag(fac,'-fvariable-expansion-in-unroller').
badFlag(insertsort,'-fguess-branch-probability').
badFlag(janne_complex,'-fgcse').
badFlag(jfdctint,'-fschedule-insns').
badFlag('matmult-int','-fselective-scheduling').
badFlag(minver,'-finline-small-functions').
badFlag('nettle-arcfour','-fschedule-insns').
badFlag('nettle-arcfour','-fschedule-insns2').
badFlag('nettle-arcfour','-ftree-dominator-opts').
badFlag('newlib-mod','-fdata-sections').
badFlag('newlib-mod','-fschedule-insns').
badFlag(nsichneu,'-fguess-branch-probability').
badFlag(picojpeg,'-fguess-branch-probability').
badFlag(recursion,'-fguess-branch-probability').
badFlag(recursion,'-foptimize-sibling-calls').
badFlag(recursion,'-ftree-pre').
badFlag('sglib-arraybinsearch','-fsched-interblock').
badFlag('sglib-arraybinsearch','-ftree-loop-optimize').
badFlag('sglib-arrayheapsort','-fsched-interblock').
badFlag('sglib-arrayquicksort','-ftree-vrp').
badFlag(statemate,'-fcse-follow-jumps').
badFlag(statemate,'-fdata-sections').
badFlag(statemate,'-fdce').
badFlag(statemate,'-ftree-pre').
badFlag(stb_perlin,'-ftree-pre').
badFlag(strstr,'-ftree-forwprop').
badFlag(tarai,'-fguess-branch-probability').
badFlag(A,'-fpredictive-commoning') :- expr_flags(A,B,C,static).
badFlag(A,'-ftree-loop-if-convert').
badFlag(A,'-fgcse') :- edge_src(A,A,B,C), stmt_code(A,A,D,gimple_assign),
	expr_int_size(A,A,E,8).
badFlag(A,'-fschedule-insns') :- expr_type(A,B,C,D), expr_int_size(A,
	B,D,64), expr_var(A,B,C,E).
badFlag(A,'-fselective-scheduling2') :- stmt_code(A,B,C,gimple_call).
badFlag(A,'-fguess-branch-probability') :- edge_src(A,B,C,D),
	expr_class(A,B,E,exceptional), expr_code2(A,B,real_type).
badFlag(A,'-fprefetch-loop-arrays').
badFlag(A,'-fconserve-stack').
badFlag(A,'-fschedule-insns') :- stmt_code(A,A,B,gimple_cond).
badFlag(A,'-fgcse') :- expr_int_size(A,B,C,8), expr_int_size(A,
	B,D,64).
badFlag(A,'-ftree-forwprop') :- stmt_flag(A,B,C,has_volatile_ops),
	expr_int_size(A,B,D,8).
badFlag(A,'-fsel-sched-pipelining').
badFlag(A,'-ftree-copyrename').
badFlag(A,'-fcrossjumping') :- edge_src(A,A,B,C).
badFlag(A,'-fschedule-insns2') :- stmt_code(A,B,C,gimple_cond),
	stmt_flag(A,A,D,has_volatile_ops).
badFlag(A,'-fsched-interblock') :- expr_int_size(A,B,C,64).
badFlag(A,'-fivopts') :- stmt_code(A,B,C,gimple_call), expr_class(A,
	B,D,constant), expr_flags(A,B,E,static), expr_flags(A,
	B,E,nothrow), call_num_args(A,B,C,1).
badFlag(A,'-fcommon').
badFlag(A,'-ftree-loop-distribute-patterns').
badFlag(A,'-fsection-anchors') :- stmt_code(A,B,C,gimple_call).

