package apsouth1

import "github.com/TangoGroup/aws/fn"

Backup :: {
	BackupPlan :: {
		Type: "AWS::Backup::BackupPlan"
		Properties: {
			BackupPlan: {
				BackupPlanName: string | fn.Fn
				BackupPlanRule: [...{
					CompletionWindowMinutes?: int | fn.Fn
					Lifecycle?: {
						DeleteAfterDays?:            int | fn.Fn
						MoveToColdStorageAfterDays?: int | fn.Fn
					}
					RecoveryPointTags?: {
						[string]: _
					} | fn.Fn
					RuleName:            string | fn.Fn
					ScheduleExpression?: string | fn.Fn
					StartWindowMinutes?: int | fn.Fn
					TargetBackupVault:   string | fn.Fn
				}]
			}
			BackupPlanTags?: {
				[string]: _
			} | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	BackupSelection :: {
		Type: "AWS::Backup::BackupSelection"
		Properties: {
			BackupPlanId: string | fn.Fn
			BackupSelection: {
				IamRoleArn: (=~#"arn:(aws[a-zA-Z-]*)?:iam::\d{12}:role/[a-zA-Z_0-9+=,.@\-_/]+"#) | fn.Fn
				ListOfTags?: [...{
					ConditionKey:   string | fn.Fn
					ConditionType:  string | fn.Fn
					ConditionValue: string | fn.Fn
				}]
				Resources?:    [...(string | fn.Fn)] | (string | fn.Fn)
				SelectionName: string | fn.Fn
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	BackupVault :: {
		Type: "AWS::Backup::BackupVault"
		Properties: {
			AccessPolicy?: {
				[string]: _
			} | fn.Fn
			BackupVaultName:  string | fn.Fn
			BackupVaultTags?: {
				[string]: _
			} | fn.Fn
			EncryptionKeyArn?: string | fn.Fn
			Notifications?: {
				BackupVaultEvents: [...(string | fn.Fn)] | (string | fn.Fn)
				SNSTopicArn:       string | fn.Fn
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
