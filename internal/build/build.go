package build

import (
	"fmt"
	"strings"
)

var Version = ""

var Date = "" // YYYY-MM-DD

func FormattedVersion() string {
	version := strings.TrimPrefix(Version, "v")
	if version == "" {
		version = "DEV"
	}

	var dateStr string
	if Date != "" {
		dateStr = fmt.Sprintf(" (%s)", Date)
	}

	return fmt.Sprintf("%s%s", version, dateStr)
}
