
\
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
void FB_integraotor(struct FB_integraotor* inst)
{
	
	inst->out = inst->oldval + ((inst->in) * inst->dt);
	inst->oldval = inst->out;
	/*TODO: Add your code here*/
}
