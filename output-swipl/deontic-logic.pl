:- op(1200, xfx, :+).

answer('urn:example:not'('urn:example:permitted'((drink, drive)))).
answer('urn:example:not'('urn:example:obligatory'('urn:example:not'(pay_taxes)))).
answer('urn:example:not'('urn:example:obligatory'('urn:example:not'(stop_at_red_light)))).
answer('urn:example:not'('urn:example:obligatory'((drink, drive)))).
answer('urn:example:not'('urn:example:permitted'(steal))).
answer('urn:example:not'('urn:example:permitted'('urn:example:not'(pay_taxes)))).
answer('urn:example:not'('urn:example:permitted'('urn:example:not'(stop_at_red_light)))).
answer('urn:example:not'('urn:example:forbidden'((drink, 'urn:example:not'(drive))))).
answer('urn:example:not'('urn:example:forbidden'(('urn:example:not'(drink), drive)))).
answer('urn:example:obligatory'(pay_taxes)).
answer('urn:example:obligatory'(stop_at_red_light)).
answer('urn:example:obligatory'('urn:example:not'((drink, drive)))).
answer('urn:example:permitted'((drink, 'urn:example:not'(drive)))).
answer('urn:example:permitted'(('urn:example:not'(drink), drive))).
answer('urn:example:forbidden'(steal)).
answer('urn:example:forbidden'('urn:example:not'(pay_taxes))).
answer('urn:example:forbidden'('urn:example:not'(stop_at_red_light))).
answer('urn:example:forbidden'((drink, drive))).
answer('urn:example:not'('urn:example:obligatory'(steal))).
answer('urn:example:not'('urn:example:forbidden'(pay_taxes))).
answer('urn:example:not'('urn:example:forbidden'(stop_at_red_light))).
answer('urn:example:not'('urn:example:forbidden'('urn:example:not'((drink, drive))))).
answer('urn:example:obligatory'('urn:example:not'(steal))).
answer('urn:example:permitted'(pay_taxes)).
answer('urn:example:permitted'(stop_at_red_light)).
answer('urn:example:permitted'('urn:example:not'((drink, drive)))).
answer('urn:example:not'('urn:example:forbidden'('urn:example:not'(steal)))).
answer('urn:example:permitted'('urn:example:not'(steal))).

step(('urn:example:obligatory'(A):+'urn:example:not'('urn:example:permitted'(B)), negation(B, A)), ('urn:example:not'('urn:example:permitted'((drink, drive))), negation((drink, drive), 'urn:example:not'((drink, drive)))), 'urn:example:obligatory'('urn:example:not'((drink, drive)))).
step(('urn:example:forbidden'(A):+'urn:example:obligatory'(B), negation(B, A)), ('urn:example:obligatory'(pay_taxes), negation(pay_taxes, 'urn:example:not'(pay_taxes))), 'urn:example:forbidden'('urn:example:not'(pay_taxes))).
step(('urn:example:forbidden'(A):+'urn:example:obligatory'(B), negation(B, A)), ('urn:example:obligatory'(stop_at_red_light), negation(stop_at_red_light, 'urn:example:not'(stop_at_red_light))), 'urn:example:forbidden'('urn:example:not'(stop_at_red_light))).
step(('urn:example:forbidden'(A):+'urn:example:obligatory'(B), negation(B, A)), ('urn:example:obligatory'('urn:example:not'((drink, drive))), negation('urn:example:not'((drink, drive)), (drink, drive))), 'urn:example:forbidden'((drink, drive))).
step(('urn:example:not'('urn:example:obligatory'(A)):+'urn:example:obligatory'(B), negation(B, A)), ('urn:example:obligatory'(pay_taxes), negation(pay_taxes, 'urn:example:not'(pay_taxes))), 'urn:example:not'('urn:example:obligatory'('urn:example:not'(pay_taxes)))).
step(('urn:example:not'('urn:example:obligatory'(A)):+'urn:example:obligatory'(B), negation(B, A)), ('urn:example:obligatory'(stop_at_red_light), negation(stop_at_red_light, 'urn:example:not'(stop_at_red_light))), 'urn:example:not'('urn:example:obligatory'('urn:example:not'(stop_at_red_light)))).
step(('urn:example:not'('urn:example:obligatory'(A)):+'urn:example:obligatory'(B), negation(B, A)), ('urn:example:obligatory'('urn:example:not'((drink, drive))), negation('urn:example:not'((drink, drive)), (drink, drive))), 'urn:example:not'('urn:example:obligatory'((drink, drive)))).
step(('urn:example:not'('urn:example:permitted'(A)):+'urn:example:forbidden'(A)), 'urn:example:forbidden'(steal), 'urn:example:not'('urn:example:permitted'(steal))).
step(('urn:example:not'('urn:example:permitted'(A)):+'urn:example:forbidden'(A)), 'urn:example:forbidden'('urn:example:not'(pay_taxes)), 'urn:example:not'('urn:example:permitted'('urn:example:not'(pay_taxes)))).
step(('urn:example:not'('urn:example:permitted'(A)):+'urn:example:forbidden'(A)), 'urn:example:forbidden'('urn:example:not'(stop_at_red_light)), 'urn:example:not'('urn:example:permitted'('urn:example:not'(stop_at_red_light)))).
step(('urn:example:not'('urn:example:forbidden'(A)):+'urn:example:permitted'(A)), 'urn:example:permitted'((drink, 'urn:example:not'(drive))), 'urn:example:not'('urn:example:forbidden'((drink, 'urn:example:not'(drive))))).
step(('urn:example:not'('urn:example:forbidden'(A)):+'urn:example:permitted'(A)), 'urn:example:permitted'(('urn:example:not'(drink), drive)), 'urn:example:not'('urn:example:forbidden'(('urn:example:not'(drink), drive)))).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:permitted'((drink, drive))), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:obligatory'('urn:example:not'(pay_taxes))), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:obligatory'('urn:example:not'(stop_at_red_light))), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:obligatory'((drink, drive))), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:permitted'(steal)), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:permitted'('urn:example:not'(pay_taxes))), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:permitted'('urn:example:not'(stop_at_red_light))), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:forbidden'((drink, 'urn:example:not'(drive)))), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:forbidden'(('urn:example:not'(drink), drive))), true).
step((true:+'urn:example:obligatory'(_)), 'urn:example:obligatory'(pay_taxes), true).
step((true:+'urn:example:obligatory'(_)), 'urn:example:obligatory'(stop_at_red_light), true).
step((true:+'urn:example:obligatory'(_)), 'urn:example:obligatory'('urn:example:not'((drink, drive))), true).
step((true:+'urn:example:permitted'(_)), 'urn:example:permitted'((drink, 'urn:example:not'(drive))), true).
step((true:+'urn:example:permitted'(_)), 'urn:example:permitted'(('urn:example:not'(drink), drive)), true).
step((true:+'urn:example:forbidden'(_)), 'urn:example:forbidden'(steal), true).
step((true:+'urn:example:forbidden'(_)), 'urn:example:forbidden'('urn:example:not'(pay_taxes)), true).
step((true:+'urn:example:forbidden'(_)), 'urn:example:forbidden'('urn:example:not'(stop_at_red_light)), true).
step((true:+'urn:example:forbidden'(_)), 'urn:example:forbidden'((drink, drive)), true).
step(('urn:example:obligatory'(A):+'urn:example:not'('urn:example:permitted'(B)), negation(B, A)), ('urn:example:not'('urn:example:permitted'(steal)), negation(steal, 'urn:example:not'(steal))), 'urn:example:obligatory'('urn:example:not'(steal))).
step(('urn:example:permitted'(A):+'urn:example:not'('urn:example:obligatory'(B)), negation(B, A)), ('urn:example:not'('urn:example:obligatory'('urn:example:not'(pay_taxes))), negation('urn:example:not'(pay_taxes), pay_taxes)), 'urn:example:permitted'(pay_taxes)).
step(('urn:example:permitted'(A):+'urn:example:not'('urn:example:obligatory'(B)), negation(B, A)), ('urn:example:not'('urn:example:obligatory'('urn:example:not'(stop_at_red_light))), negation('urn:example:not'(stop_at_red_light), stop_at_red_light)), 'urn:example:permitted'(stop_at_red_light)).
step(('urn:example:permitted'(A):+'urn:example:not'('urn:example:obligatory'(B)), negation(B, A)), ('urn:example:not'('urn:example:obligatory'((drink, drive))), negation((drink, drive), 'urn:example:not'((drink, drive)))), 'urn:example:permitted'('urn:example:not'((drink, drive)))).
step(('urn:example:not'('urn:example:obligatory'(A)):+'urn:example:obligatory'(B), negation(B, A)), ('urn:example:obligatory'('urn:example:not'(steal)), negation('urn:example:not'(steal), steal)), 'urn:example:not'('urn:example:obligatory'(steal))).
step(('urn:example:not'('urn:example:forbidden'(A)):+'urn:example:permitted'(A)), 'urn:example:permitted'(pay_taxes), 'urn:example:not'('urn:example:forbidden'(pay_taxes))).
step(('urn:example:not'('urn:example:forbidden'(A)):+'urn:example:permitted'(A)), 'urn:example:permitted'(stop_at_red_light), 'urn:example:not'('urn:example:forbidden'(stop_at_red_light))).
step(('urn:example:not'('urn:example:forbidden'(A)):+'urn:example:permitted'(A)), 'urn:example:permitted'('urn:example:not'((drink, drive))), 'urn:example:not'('urn:example:forbidden'('urn:example:not'((drink, drive))))).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:obligatory'(steal)), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:forbidden'(pay_taxes)), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:forbidden'(stop_at_red_light)), true).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:forbidden'('urn:example:not'((drink, drive)))), true).
step((true:+'urn:example:obligatory'(_)), 'urn:example:obligatory'('urn:example:not'(steal)), true).
step((true:+'urn:example:permitted'(_)), 'urn:example:permitted'(pay_taxes), true).
step((true:+'urn:example:permitted'(_)), 'urn:example:permitted'(stop_at_red_light), true).
step((true:+'urn:example:permitted'(_)), 'urn:example:permitted'('urn:example:not'((drink, drive))), true).
step(('urn:example:permitted'(A):+'urn:example:not'('urn:example:obligatory'(B)), negation(B, A)), ('urn:example:not'('urn:example:obligatory'(steal)), negation(steal, 'urn:example:not'(steal))), 'urn:example:permitted'('urn:example:not'(steal))).
step(('urn:example:not'('urn:example:forbidden'(A)):+'urn:example:permitted'(A)), 'urn:example:permitted'('urn:example:not'(steal)), 'urn:example:not'('urn:example:forbidden'('urn:example:not'(steal)))).
step((true:+'urn:example:not'(_)), 'urn:example:not'('urn:example:forbidden'('urn:example:not'(steal))), true).
step((true:+'urn:example:permitted'(_)), 'urn:example:permitted'('urn:example:not'(steal)), true).
