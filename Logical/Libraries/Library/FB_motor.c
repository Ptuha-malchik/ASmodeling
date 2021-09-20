
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
void FB_motor(struct FB_motor* inst)
{
	REAL temp;
	temp = inst->u / inst->ke;
	temp = temp - inst->w;
	temp = temp * inst->dt / inst->Tm;
	inst->integraotor.in = temp;
	inst->integraotor.dt = inst->dt;
	FB_integraotor(&inst->integraotor);
	temp = inst->integraotor.out;
	inst->w = temp;
	temp = inst->w;
	inst->integraotor.in = temp;
	FB_integraotor(&inst->integraotor);
	inst->phi = inst->phi + temp;
	/*TODO: Add your code here*/
}
