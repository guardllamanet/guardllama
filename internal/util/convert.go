package util

func ToBool(value *bool) bool {
	if value == nil {
		return false
	}

	return *value
}
