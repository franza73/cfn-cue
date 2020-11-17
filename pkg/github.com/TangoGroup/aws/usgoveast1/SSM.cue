package usgoveast1

import "github.com/TangoGroup/aws/fn"

#SSM: {
	#Association: {
		Type: "AWS::SSM::Association"
		Properties: {
			ApplyOnlyAtCronInterval?:       bool | fn.#Fn
			AssociationName?:               string | fn.#Fn
			AutomationTargetParameterName?: string | fn.#Fn
			ComplianceSeverity?:            string | fn.#Fn
			DocumentVersion?:               string | fn.#Fn
			InstanceId?:                    string | fn.#Fn
			MaxConcurrency?:                string | fn.#Fn
			MaxErrors?:                     string | fn.#Fn
			Name:                           string | fn.#Fn
			OutputLocation?:                {
				S3Location?: {
					OutputS3BucketName?: string | fn.#Fn
					OutputS3KeyPrefix?:  string | fn.#Fn
					OutputS3Region?:     string | fn.#Fn
				} | fn.If
			} | fn.If
			Parameters?: {
				[string]: ParameterValues: [...(string | fn.#Fn)] | (string | fn.#Fn)
			} | fn.If
			ScheduleExpression?: string | fn.#Fn
			SyncCompliance?:     string | fn.#Fn
			Targets?:            [...{
				Key:    string | fn.#Fn
				Values: [...(string | fn.#Fn)] | (string | fn.#Fn)
			}] | fn.If
			WaitForSuccessTimeoutSeconds?: int | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Document: {
		Type: "AWS::SSM::Document"
		Properties: {
			Content: {
				[string]: _
			} | fn.#Fn
			DocumentType?: string | fn.#Fn
			Name?:         string | fn.#Fn
			Tags?:         [...{
				Key:   string | fn.#Fn
				Value: string | fn.#Fn
			}] | fn.If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#MaintenanceWindowTarget: {
		Type: "AWS::SSM::MaintenanceWindowTarget"
		Properties: {
			Description?:      string | fn.#Fn
			Name?:             string | fn.#Fn
			OwnerInformation?: string | fn.#Fn
			ResourceType:      string | fn.#Fn
			Targets:           [...{
				Key:     string | fn.#Fn
				Values?: [...(string | fn.#Fn)] | (string | fn.#Fn)
			}] | fn.If
			WindowId: string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Parameter: {
		Type: "AWS::SSM::Parameter"
		Properties: {
			AllowedPattern?: string | fn.#Fn
			DataType?:       string | fn.#Fn
			Description?:    string | fn.#Fn
			Name?:           string | fn.#Fn
			Policies?:       string | fn.#Fn
			Tags?:           {
				[string]: _
			} | fn.#Fn
			Tier?: string | fn.#Fn
			Type:  string | fn.#Fn
			Value: string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
