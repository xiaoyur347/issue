extern "C" {
extern void not_exist_function(void);
extern void init(void)
{
	not_exist_function();
}

} // extern "C"
