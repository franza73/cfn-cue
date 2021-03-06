package apsoutheast2

import "github.com/TangoGroup/aws/fn"

Inspector :: {
	AssessmentTarget :: {
		Type:       "AWS::Inspector::AssessmentTarget"
		Properties: close({
			AssessmentTargetName?: string | fn.Fn
			ResourceGroupArn?:     string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	AssessmentTemplate :: {
		Type:       "AWS::Inspector::AssessmentTemplate"
		Properties: close({
			AssessmentTargetArn:        string | fn.Fn
			AssessmentTemplateName?:    string | fn.Fn
			DurationInSeconds:          (>=180 & <=86400) | fn.Fn
			RulesPackageArns:           [...(string | fn.Fn)] | (string | fn.Fn)
			UserAttributesForFindings?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ResourceGroup :: {
		Type:       "AWS::Inspector::ResourceGroup"
		Properties: close({
			ResourceGroupTags: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
