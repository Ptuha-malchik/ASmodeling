
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void FB_regulator(struct FB_regulator* inst)
{
	
	REAL temp;
	temp = inst->e * inst->k_i * inst->dt;
	temp+=inst->iyOld;
	FB_integraotor(&inst->integrator);
	inst->integrator.in = temp;
	inst->integrator.dt = inst->dt;
	
	if (inst->e * inst->k_p > inst->max_abs_value)
	{
		temp = inst->integrator.out + inst->max_abs_value;
	}
	if (inst->e * inst->k_p < inst->max_abs_value)
	{
		temp = inst->integrator.out + inst->e * inst->k_p;
	}
	if (temp > inst->max_abs_value)
	{
		inst->u = inst->max_abs_value;
		inst->iyOld = temp - inst->max_abs_value;
	}
	else 
	{
		inst->u = temp;
		inst->iyOld = 0;
	} 
	
	/*TODO: Add your code here*/
}
