
{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_integraotor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : {REDUND_UNREPLICABLE} REAL; (*���� �������������� �����*)
	END_VAR
	VAR_OUTPUT
		out : {REDUND_UNREPLICABLE} REAL; (*����� �������������� �����*)
	END_VAR
	VAR
		dt : {REDUND_UNREPLICABLE} REAL; (*��� ������� [�]*)
		oldval : {REDUND_UNREPLICABLE} REAL; (*J*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FB_motor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL; (*������� ���������� [�]*)
		Tm : REAL; (*������� �������� [��/���]*)
	END_VAR
	VAR_OUTPUT
		w : REAL; (*���������� *)
		phi : REAL; (*������������������� ���������� ������� [�]*)
	END_VAR
	VAR
		ke : REAL; (*��������� [���]*)
		integraotor : FB_integraotor; (*���������� ��� ��������� [���/��]*)
		dt : REAL; (*��� ������� [�]*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_regulator
	VAR
		e : REAL; (*��������������� ����� �������� ������������ � �������� ��������� �������� ���� ��� [��/���]*)
		u : REAL; (*����������, ���������� �� ���� ��� [�]*)
		k_p : REAL; (*���������������� ����������� ����������*)
		k_i : REAL; (*������������ ����������� ����������*)
		integrator : FB_integraotor; (*���������� *)
		iyOld : REAL; (*�������� ����������� �������� ����� �����������������*)
		max_abs_value : REAL; (*������� ����� ����������� [�]*)
		dt : REAL; (*��� ������� [�]*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_motor1 (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL; (*������� ���������� [�]*)
		Tm : REAL; (*������� �������� [��/���]*)
	END_VAR
	VAR_OUTPUT
		w : REAL; (*���������� *)
		phi : REAL; (*������������������� ���������� ������� [�]*)
	END_VAR
	VAR
		ke : REAL; (*��������� [���]*)
		integraotor : FB_integraotor; (*���������� ��� ��������� [���/��]*)
		dt : REAL; (*��� ������� [�]*)
	END_VAR
END_FUNCTION_BLOCK
