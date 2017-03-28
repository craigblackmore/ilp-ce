[hotIR, progs, examples]?

:- modeh(*,badFlag(+program, #flag))?
:- modeb(*, edge_src(+program, -func, -edge, -bb))?
:- modeb(*, edge_dest(+program, -func, -edge, -bb))?
edge_cond(P, F, E) :- edge_flag(P, F, E, false).
edge_cond(P, F, E) :- edge_flag(P, F, E, true).
edge_critical(P, F, E) :- edge_flag(P, F, E, critical).
edge_abnormal(P, F, E) :- edge_flag(P, F, E, abnormal).
:- modeb(*, edge_cond(+program, -func, -edge))?
:- modeb(*, edge_critical(+program, -func, -edge))?
:- modeb(*, edge_abnormal(+program, -func, -edge))?
edge_prob_always(P, F, E) :- edge_prob(P, F, E, 100.0).
edge_prob_low(P, F, E) :- edge_prob(P, F, E, N), N < 0.5.
edge_prob_high(P, F, E) :- edge_prob(P, F, E, N), N >= 0.5.
edge_prob_never(P, F, E) :- edge_prob(P, F, E, 0.0).
:- modeb(*, edge_prob_always(+program, -func, -edge))?
:- modeb(*, edge_prob_low(+program, -func, -edge))?
:- modeb(*, edge_prob_high(+program, -func, -edge))?
:- modeb(*, edge_prob_never(+program, -func, -edge))?
:- modeb(*, stmt_code(+program, -func, -stmt, #))?
:- modeb(*, stmt_flag(+program, -func, -stmt, #))?
:- modeb(*, expr_op_f(+program, -func, -expr, -expr))?
:- modeb(*, expr_op_n(+program, -func, -expr, -expr, -expr))?
:- modeb(*, expr_type(+program, -func, -expr, -expr))?
:- modeb(*, expr_class(+program, -func, -expr, #))?
expr_code2(P, F, C) :- expr_code(P,F,E1,C), expr_code(P,F,E2,C),
                       E1 @< E2.
:- modeb(*, expr_code2(+program, -func, #))?
:- modeb(*, expr_int_size(+program, -func, -expr, #))?
:- modeb(*, expr_code_len(+program, -func, -expr, #))?
:- modeb(*, expr_ssa_name(+program, -func, -expr, -ssa))?
:- modeb(*, expr_ssa_var(+program, -func, -expr, -expr))?
:- modeb(*, expr_flags(+program, -func, -expr, #))?
:- modeb(*, expr_var(+program, -func, -expr, -var))?
assign_addsub(P, F, S) :- assign_subcode(P, F, S, minus_expr).
assign_addsub(P, F, S) :- assign_subcode(P, F, S, plus_expr).
:- modeb(*, assign_addsub(+program, -func, -stmt))?
:- modeb(*, cond_op(+program, -func, -stmt, -expr))?
:- modeb(*, cond_true(+program, -func, -stmt, -expr))?
:- modeb(*, cond_false(+program, -func, -stmt, -expr))?
:- modeb(*, call_num_args(+program, -func, -stmt, #))?
:- modeb(*, call_flag(+program, -func, -stmt, #))?
:- modeb(*, call_lhs(+program, -func, -stmt, -expr))?
:- modeb(*, call_fn(+program, -func, -stmt, -expr))?
:- modeb(*, phi_bb(+program, -func, -phi, -bb))?
:- modeb(*, phi_len(+program, -func, -phi, #))?
:- modeb(*, phi_result(+program, -func, -phi, -ssa))?
:- modeb(*, phi_arg(+program, -func, -bb, -expr))?

:- set(inflate, 700)?
:- set(r, 1000)?
:- set(h, 30)?
:- set(nodes, 1000)?
:- set(verbose, 2)?