package android
type Product_variables struct {
	Has_legacy_camera_hal1 struct {
		Cflags []string
	}
	Needs_legacy_camera_hal1_dyn_native_handle struct {
		Cppflags []string
	}
	Target_shim_libs struct {
		Cppflags []string
	}
}

type ProductVariables struct {
	Has_legacy_camera_hal1  *bool `json:",omitempty"`
	Needs_legacy_camera_hal1_dyn_native_handle  *bool `json:",omitempty"`
	Target_shim_libs  *string `json:",omitempty"`
}
