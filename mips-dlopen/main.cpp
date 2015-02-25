#include <stdio.h>
#include <dlfcn.h>

typedef void (*init_function_t)(void);

int main()
{
#ifdef __ANDROID__
	const char *strLibName = "./libtest_android.so";
#elif !defined(__mips__)
	const char *strLibName = "./libtest_x86.so";
#else
	const char *strLibName = "./libtest_mips.so";
#endif
	void *pHandle = dlopen(strLibName, RTLD_NOW);
	if (pHandle == NULL)
	{
		printf("open %s fail. %s\n", strLibName, dlerror());
		return 1;
	}
	init_function_t pFunc = (init_function_t)dlsym(pHandle, "init");
	if (pFunc == NULL)
	{
		printf("libtest.so has no init function\n");
		dlclose(pHandle);
		return 2;
	}
	pFunc();
	dlclose(pHandle);
	return 0;
}