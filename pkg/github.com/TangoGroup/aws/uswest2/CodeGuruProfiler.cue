package uswest2

import "github.com/TangoGroup/aws/fn"

CodeGuruProfiler :: {
	ProfilingGroup :: {
		Type:       "AWS::CodeGuruProfiler::ProfilingGroup"
		Properties: close({
			AgentPermissions?: {
				[string]: _
			} | fn.Fn
			ProfilingGroupName: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
