project	"qms_ta64"
location	"."
kind	"SharedLib"
language	"C"
targetdir	"../bin64"
implibdir	"../lib64"

defines {
	"TA_LIB_API=__declspec(dllexport)"
}

files {
	"../include/qms_ta64/*.h",
	"*.h",
	"*.c"
}

