package saeast1

import "github.com/TangoGroup/aws/fn"

#GameLift: {
	#Alias: {
		Type: "AWS::GameLift::Alias"
		Properties: {
			Description?:    string | fn.#Fn
			Name:            string | fn.#Fn
			RoutingStrategy: {
				FleetId?: string | fn.#Fn
				Message?: string | fn.#Fn
				Type?:    string | fn.#Fn
			} | fn.If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Build: {
		Type: "AWS::GameLift::Build"
		Properties: {
			Name?:            string | fn.#Fn
			OperatingSystem?: string | fn.#Fn
			StorageLocation?: {
				Bucket:         string | fn.#Fn
				Key:            string | fn.#Fn
				ObjectVersion?: string | fn.#Fn
				RoleArn:        string | fn.#Fn
			} | fn.If
			Version?: string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Fleet: {
		Type: "AWS::GameLift::Fleet"
		Properties: {
			BuildId?:                  string | fn.#Fn
			CertificateConfiguration?: {
				CertificateType: string | fn.#Fn
			} | fn.If
			Description?:           string | fn.#Fn
			DesiredEC2Instances?:   int | fn.#Fn
			EC2InboundPermissions?: [...{
				FromPort: int | fn.#Fn
				IpRange:  string | fn.#Fn
				Protocol: string | fn.#Fn
				ToPort:   int | fn.#Fn
			}] | fn.If
			EC2InstanceType:                 ("c3.2xlarge" | "c3.4xlarge" | "c3.8xlarge" | "c3.large" | "c3.xlarge" | "c4.2xlarge" | "c4.4xlarge" | "c4.8xlarge" | "c4.large" | "c4.xlarge" | "c5.18xlarge" | "c5.2xlarge" | "c5.4xlarge" | "c5.9xlarge" | "c5.large" | "c5.xlarge" | "c5a.12xlarge" | "c5a.16xlarge" | "c5a.24xlarge" | "c5a.2xlarge" | "c5a.4xlarge" | "c5a.8xlarge" | "c5a.large" | "c5a.xlarge" | "g4dn.12xlarge" | "g4dn.16xlarge" | "g4dn.2xlarge" | "g4dn.4xlarge" | "g4dn.8xlarge" | "g4dn.xlarge" | "m3.2xlarge" | "m3.large" | "m3.medium" | "m3.xlarge" | "m4.10xlarge" | "m4.2xlarge" | "m4.4xlarge" | "m4.large" | "m4.xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.large" | "m5.xlarge" | "m5a.12xlarge" | "m5a.16xlarge" | "m5a.24xlarge" | "m5a.2xlarge" | "m5a.4xlarge" | "m5a.8xlarge" | "m5a.large" | "m5a.xlarge" | "r3.2xlarge" | "r3.4xlarge" | "r3.8xlarge" | "r3.large" | "r3.xlarge" | "r4.16xlarge" | "r4.2xlarge" | "r4.4xlarge" | "r4.8xlarge" | "r4.large" | "r4.xlarge" | "r5a.12xlarge" | "r5a.16xlarge" | "r5a.24xlarge" | "r5a.2xlarge" | "r5a.4xlarge" | "r5a.8xlarge" | "r5a.large" | "r5a.xlarge" | "t2.large" | "t2.medium" | "t2.micro" | "t2.small") | fn.#Fn
			FleetType?:                      string | fn.#Fn
			InstanceRoleARN?:                string | fn.#Fn
			LogPaths?:                       [...(string | fn.#Fn)] | (string | fn.#Fn)
			MaxSize?:                        int | fn.#Fn
			MetricGroups?:                   [...(string | fn.#Fn)] | (string | fn.#Fn)
			MinSize?:                        int | fn.#Fn
			Name:                            string | fn.#Fn
			NewGameSessionProtectionPolicy?: string | fn.#Fn
			PeerVpcAwsAccountId?:            string | fn.#Fn
			PeerVpcId?:                      string | fn.#Fn
			ResourceCreationLimitPolicy?:    {
				NewGameSessionsPerCreator?: int | fn.#Fn
				PolicyPeriodInMinutes?:     int | fn.#Fn
			} | fn.If
			RuntimeConfiguration?: {
				GameSessionActivationTimeoutSeconds?: int | fn.#Fn
				MaxConcurrentGameSessionActivations?: int | fn.#Fn
				ServerProcesses?:                     [...{
					ConcurrentExecutions: int | fn.#Fn
					LaunchPath:           string | fn.#Fn
					Parameters?:          string | fn.#Fn
				}] | fn.If
			} | fn.If
			ScriptId?:               string | fn.#Fn
			ServerLaunchParameters?: string | fn.#Fn
			ServerLaunchPath?:       string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#GameServerGroup: {
		Type: "AWS::GameLift::GameServerGroup"
		Properties: {
			AutoScalingPolicy?: {
				EstimatedInstanceWarmup?:    number | fn.#Fn
				TargetTrackingConfiguration: {
					TargetValue: number | fn.#Fn
				} | fn.If
			} | fn.If
			BalancingStrategy?:          string | fn.#Fn
			DeleteOption?:               string | fn.#Fn
			GameServerGroupName:         string | fn.#Fn
			GameServerProtectionPolicy?: string | fn.#Fn
			InstanceDefinitions:         {
				InstanceDefinitions?: [...{
					[string]: _
				}] | fn.If
			} | fn.If
			LaunchTemplate: {
				LaunchTemplateId?:   string | fn.#Fn
				LaunchTemplateName?: string | fn.#Fn
				Version?:            string | fn.#Fn
			} | fn.If
			MaxSize?: number | fn.#Fn
			MinSize?: number | fn.#Fn
			RoleArn:  string | fn.#Fn
			Tags?:    {
				Tags?: [...{
					[string]: _
				}] | fn.If
			} | fn.If
			VpcSubnets?: {
				VpcSubnets?: [...(string | fn.#Fn)] | (string | fn.#Fn)
			} | fn.If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#GameSessionQueue: {
		Type: "AWS::GameLift::GameSessionQueue"
		Properties: {
			Destinations?: [...{
				DestinationArn?: string | fn.#Fn
			}] | fn.If
			Name:                   string | fn.#Fn
			PlayerLatencyPolicies?: [...{
				MaximumIndividualPlayerLatencyMilliseconds?: int | fn.#Fn
				PolicyDurationSeconds?:                      int | fn.#Fn
			}] | fn.If
			TimeoutInSeconds?: int | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#MatchmakingConfiguration: {
		Type: "AWS::GameLift::MatchmakingConfiguration"
		Properties: {
			AcceptanceRequired:        bool | fn.#Fn
			AcceptanceTimeoutSeconds?: int | fn.#Fn
			AdditionalPlayerCount?:    int | fn.#Fn
			BackfillMode?:             string | fn.#Fn
			CustomEventData?:          string | fn.#Fn
			Description?:              string | fn.#Fn
			FlexMatchMode?:            string | fn.#Fn
			GameProperties?:           [...{
				Key:   string | fn.#Fn
				Value: string | fn.#Fn
			}] | fn.If
			GameSessionData?:      string | fn.#Fn
			GameSessionQueueArns?: [...(string | fn.#Fn)] | (string | fn.#Fn)
			Name:                  string | fn.#Fn
			NotificationTarget?:   string | fn.#Fn
			RequestTimeoutSeconds: int | fn.#Fn
			RuleSetName:           string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#MatchmakingRuleSet: {
		Type: "AWS::GameLift::MatchmakingRuleSet"
		Properties: {
			Name:        string | fn.#Fn
			RuleSetBody: string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Script: {
		Type: "AWS::GameLift::Script"
		Properties: {
			Name?:           string | fn.#Fn
			StorageLocation: {
				Bucket:         string | fn.#Fn
				Key:            string | fn.#Fn
				ObjectVersion?: string | fn.#Fn
				RoleArn:        string | fn.#Fn
			} | fn.If
			Version?: string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
