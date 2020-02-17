package cnnorth1

import "github.com/TangoGroup/aws/fn"

SecretsManager :: {
	ResourcePolicy :: {
		Type: "AWS::SecretsManager::ResourcePolicy"
		Properties: {
			ResourcePolicy: {
				[string]: _
			} | fn.Fn
			SecretId: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	RotationSchedule :: {
		Type: "AWS::SecretsManager::RotationSchedule"
		Properties: {
			RotationLambdaARN?: string | fn.Fn
			RotationRules?:     {
			} | fn.If
			SecretId: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Secret :: {
		Type: "AWS::SecretsManager::Secret"
		Properties: {
			Description?:          string | fn.Fn
			GenerateSecretString?: {
			} | fn.If
			KmsKeyId?:     string | fn.Fn
			Name?:         string | fn.Fn
			SecretString?: string | fn.Fn
			Tags?:         [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}] | fn.If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	SecretTargetAttachment :: {
		Type: "AWS::SecretsManager::SecretTargetAttachment"
		Properties: {
			SecretId:   string | fn.Fn
			TargetId:   string | fn.Fn
			TargetType: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
