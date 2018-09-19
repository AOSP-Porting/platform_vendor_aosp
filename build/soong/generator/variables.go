package generator

import (
	"fmt"

	"android/soong/android"
)

func extraExpandVariables(ctx android.ModuleContext, in string) string {
	extraVars := ctx.Config().VendorConfig("extraVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if extraVars.IsSet(name) {
			return extraVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
