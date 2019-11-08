package IoT1Click

import "github.com/TangoGroup/fn"

Device :: {
	Type: "AWS::IoT1Click::Device"
	Properties: {
		DeviceId: string | fn.Fn
		Enabled:  bool | fn.Fn
	}
}
Placement :: {
	Type: "AWS::IoT1Click::Placement"
	Properties: {
		AssociatedDevices?: {
		} | fn.Fn
		Attributes?: {
		} | fn.Fn
		PlacementName?: string | fn.Fn
		ProjectName:    string | fn.Fn
	}
}
Project :: {
	Type: "AWS::IoT1Click::Project"
	Properties: {
		Description?:      string | fn.Fn
		PlacementTemplate: propPlacementTemplate
		ProjectName?:      string | fn.Fn
	}
	propDeviceTemplate :: {
		CallbackOverrides?: {
		} | fn.Fn
		DeviceType?: string | fn.Fn
	}
	propPlacementTemplate :: {
		DefaultAttributes?: {
		} | fn.Fn
		DeviceTemplates?: {
		} | fn.Fn
	}
}