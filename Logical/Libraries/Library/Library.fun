
{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_integraotor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : {REDUND_UNREPLICABLE} REAL; (*вход интегрирующего звена*)
	END_VAR
	VAR_OUTPUT
		out : {REDUND_UNREPLICABLE} REAL; (*выход интегрирующего звена*)
	END_VAR
	VAR
		dt : {REDUND_UNREPLICABLE} REAL; (*шаг расчета [с]*)
		oldval : {REDUND_UNREPLICABLE} REAL; (*J*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FB_motor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL; (*входное напряжение [В]*)
		Tm : REAL; (*частота вращения [об/мин]*)
	END_VAR
	VAR_OUTPUT
		w : REAL; (*интегратор *)
		phi : REAL; (*электромеханическая постоянная времени [с]*)
	END_VAR
	VAR
		ke : REAL; (*положение [рад]*)
		integraotor : FB_integraotor; (*постоянная ЭДС двигателя [В•мин/об]*)
		dt : REAL; (*шаг расчета [с]*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_regulator
	VAR
		e : REAL; (*рассогласование между задающим воздействием и реальной скоростью вращения вала ДПТ [об/мин]*)
		u : REAL; (*напряжение, подаваемое на вход ДПТ [В]*)
		k_p : REAL; (*пропорциональный коэффициент регулятора*)
		k_i : REAL; (*интегральный коэффициент регулятора*)
		integrator : FB_integraotor; (*интегратор *)
		iyOld : REAL; (*хранение предыдущего значения схемы противонакопления*)
		max_abs_value : REAL; (*граница блока ограничения [В]*)
		dt : REAL; (*шаг расчета [с]*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_motor1 (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL; (*входное напряжение [В]*)
		Tm : REAL; (*частота вращения [об/мин]*)
	END_VAR
	VAR_OUTPUT
		w : REAL; (*интегратор *)
		phi : REAL; (*электромеханическая постоянная времени [с]*)
	END_VAR
	VAR
		ke : REAL; (*положение [рад]*)
		integraotor : FB_integraotor; (*постоянная ЭДС двигателя [В•мин/об]*)
		dt : REAL; (*шаг расчета [с]*)
	END_VAR
END_FUNCTION_BLOCK
