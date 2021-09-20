
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	timecount = 0;
	
	t = 0;
	fb_motor.dt = 0.1;
	fb_motor.Tm = 0.1;
	fb_motor.ke = 1;
	
	fb_motor1.dt = 0.1;
	fb_motor1.Tm = 0.1;
	fb_motor1.ke = 1;
	
	fb_reg.dt = 0.001;
	fb_reg.e = 10;
	fb_reg.k_i = 1;
	fb_reg.k_p = 10;
	fb_reg.max_abs_value = 300;
	
}

void _CYCLIC ProgramCyclic(void)
{
	if (Enable == 1) 
	{
		Speed = 100;
	}
	if (Enable == 0)
	{
		Speed = 0;
	}
	t = t + 0.1;
	timecount+=0.1;
	fb_reg.e = Speed - fb_motor.w;
	FB_regulator(&fb_reg);
	fb_motor.u = fb_reg.u;
	FB_motor(&fb_motor);
	ResW = fb_motor.w;
	ResPhi = fb_motor.phi;
	FB_motor1(&fb_motor1);
	fb_motor1.u = Speed - fb_motor1.w;
	
	if ((timecount>=5)&&(timecount<10)){
		Enable = 1;
	}
	if (timecount>=10){
		Enable = 0;
		
	}
	if (timecount>=15){
		timecount = 0;
		Enable = 1;\
	}
}

void _EXIT ProgramExit(void)
{

}
