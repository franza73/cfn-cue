package mesouth1

import "github.com/TangoGroup/aws/fn"

#AutoScaling: {
	#AutoScalingGroup: {
		Type:       "AWS::AutoScaling::AutoScalingGroup"
		Properties: close({
			AutoScalingGroupName?:    string | fn.#Fn
			AvailabilityZones?:       [...(string | fn.#Fn)] | (string | fn.#Fn)
			Cooldown?:                string | fn.#Fn
			DesiredCapacity?:         string | fn.#Fn
			HealthCheckGracePeriod?:  int | fn.#Fn
			HealthCheckType?:         ("EC2" | "ELB") | fn.#Fn
			InstanceId?:              string | fn.#Fn
			LaunchConfigurationName?: string | fn.#Fn
			LaunchTemplate?:          close({
				LaunchTemplateId?:   string | fn.#Fn
				LaunchTemplateName?: string | fn.#Fn
				Version:             string | fn.#Fn
			}) | fn.If
			LifecycleHookSpecificationList?: [...close({
				DefaultResult?:         ("ABANDON" | "CONTINUE") | fn.#Fn
				HeartbeatTimeout?:      int | fn.#Fn
				LifecycleHookName:      string | fn.#Fn
				LifecycleTransition:    ("autoscaling:EC2_INSTANCE_LAUNCHING" | "autoscaling:EC2_INSTANCE_TERMINATING") | fn.#Fn
				NotificationMetadata?:  string | fn.#Fn
				NotificationTargetARN?: string | fn.#Fn
				RoleARN?:               string | fn.#Fn
			})] | fn.If
			LoadBalancerNames?:   [...(string | fn.#Fn)] | (string | fn.#Fn)
			MaxInstanceLifetime?: int | fn.#Fn
			MaxSize:              string | fn.#Fn
			MetricsCollection?:   [...close({
				Granularity: string | fn.#Fn
				Metrics?:    [...(string | fn.#Fn)] | (string | fn.#Fn)
			})] | fn.If
			MinSize:               string | fn.#Fn
			MixedInstancesPolicy?: close({
				InstancesDistribution?: close({
					OnDemandAllocationStrategy?:          string | fn.#Fn
					OnDemandBaseCapacity?:                int | fn.#Fn
					OnDemandPercentageAboveBaseCapacity?: int | fn.#Fn
					SpotAllocationStrategy?:              string | fn.#Fn
					SpotInstancePools?:                   int | fn.#Fn
					SpotMaxPrice?:                        string | fn.#Fn
				}) | fn.If
				LaunchTemplate: close({
					LaunchTemplateSpecification: close({
						LaunchTemplateId?:   string | fn.#Fn
						LaunchTemplateName?: string | fn.#Fn
						Version:             string | fn.#Fn
					}) | fn.If
					Overrides?: [...close({
						InstanceType?:     string | fn.#Fn
						WeightedCapacity?: string | fn.#Fn
					})] | fn.If
				}) | fn.If
			}) | fn.If
			NewInstancesProtectedFromScaleIn?: bool | fn.#Fn
			NotificationConfigurations?:       [...close({
				NotificationTypes?: [...(string | fn.#Fn)] | (string | fn.#Fn)
				TopicARN:           string | fn.#Fn
			})] | fn.If
			PlacementGroup?:       string | fn.#Fn
			ServiceLinkedRoleARN?: string | fn.#Fn
			Tags?:                 [...close({
				Key:               string | fn.#Fn
				PropagateAtLaunch: bool | fn.#Fn
				Value:             string | fn.#Fn
			})] | fn.If
			TargetGroupARNs?:     [...(string | fn.#Fn)] | (string | fn.#Fn)
			TerminationPolicies?: [...(string | fn.#Fn)] | (string | fn.#Fn)
			VPCZoneIdentifier?:   [...(string | fn.#Fn)] | (string | fn.#Fn)
		})
		DependsOn?: string | [...string]
		CreationPolicy?: {
			AutoScalingCreationPolicy?: MinSuccessfulInstancesPercent?: int
			ResourceSignal?: {
				Count?:   int
				Timeout?: string
			}
		}
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		UpdatePolicy?: [string]: _
		Metadata?: [string]:     _
		Condition?: string
	}
	#LaunchConfiguration: {
		Type:       "AWS::AutoScaling::LaunchConfiguration"
		Properties: close({
			AssociatePublicIpAddress?: bool | fn.#Fn
			BlockDeviceMappings?:      [...close({
				DeviceName: string | fn.#Fn
				Ebs?:       close({
					DeleteOnTermination?: bool | fn.#Fn
					Encrypted?:           bool | fn.#Fn
					Iops?:                int | fn.#Fn
					SnapshotId?:          string | fn.#Fn
					VolumeSize?:          int | fn.#Fn
					VolumeType?:          ("gp2" | "io1" | "sc1" | "st1" | "standard") | fn.#Fn
				}) | fn.If
				NoDevice?:    bool | fn.#Fn
				VirtualName?: string | fn.#Fn
			})] | fn.If
			ClassicLinkVPCId?:             string | fn.#Fn
			ClassicLinkVPCSecurityGroups?: [...(string | fn.#Fn)] | (string | fn.#Fn)
			EbsOptimized?:                 bool | fn.#Fn
			IamInstanceProfile?:           string | fn.#Fn
			ImageId:                       string | fn.#Fn
			InstanceId?:                   string | fn.#Fn
			InstanceMonitoring?:           bool | fn.#Fn
			InstanceType:                  ("c5.18xlarge" | "c5.2xlarge" | "c5.4xlarge" | "c5.9xlarge" | "c5.large" | "c5.xlarge" | "c5d.12xlarge" | "c5d.18xlarge" | "c5d.24xlarge" | "c5d.2xlarge" | "c5d.4xlarge" | "c5d.9xlarge" | "c5d.large" | "c5d.metal" | "c5d.xlarge" | "d2.2xlarge" | "d2.4xlarge" | "d2.8xlarge" | "d2.xlarge" | "g4dn.12xlarge" | "g4dn.16xlarge" | "g4dn.2xlarge" | "g4dn.4xlarge" | "g4dn.8xlarge" | "g4dn.metal" | "g4dn.xlarge" | "i3.16xlarge" | "i3.2xlarge" | "i3.4xlarge" | "i3.8xlarge" | "i3.large" | "i3.xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.large" | "m5.metal" | "m5.xlarge" | "m5d.12xlarge" | "m5d.16xlarge" | "m5d.24xlarge" | "m5d.2xlarge" | "m5d.4xlarge" | "m5d.8xlarge" | "m5d.large" | "m5d.metal" | "m5d.xlarge" | "r5.12xlarge" | "r5.16xlarge" | "r5.24xlarge" | "r5.2xlarge" | "r5.4xlarge" | "r5.8xlarge" | "r5.large" | "r5.metal" | "r5.xlarge" | "r5d.12xlarge" | "r5d.16xlarge" | "r5d.24xlarge" | "r5d.2xlarge" | "r5d.4xlarge" | "r5d.8xlarge" | "r5d.large" | "r5d.metal" | "r5d.xlarge" | "t3.2xlarge" | "t3.large" | "t3.medium" | "t3.micro" | "t3.nano" | "t3.small" | "t3.xlarge") | fn.#Fn
			KernelId?:                     string | fn.#Fn
			KeyName?:                      string | fn.#Fn
			LaunchConfigurationName?:      string | fn.#Fn
			PlacementTenancy?:             ("dedicated" | "default") | fn.#Fn
			RamDiskId?:                    string | fn.#Fn
			SecurityGroups?:               [...(string | fn.#Fn)] | (string | fn.#Fn)
			SpotPrice?:                    string | fn.#Fn
			UserData?:                     string | fn.#Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#LifecycleHook: {
		Type:       "AWS::AutoScaling::LifecycleHook"
		Properties: close({
			AutoScalingGroupName:   string | fn.#Fn
			DefaultResult?:         ("ABANDON" | "CONTINUE") | fn.#Fn
			HeartbeatTimeout?:      int | fn.#Fn
			LifecycleHookName?:     string | fn.#Fn
			LifecycleTransition:    ("autoscaling:EC2_INSTANCE_LAUNCHING" | "autoscaling:EC2_INSTANCE_TERMINATING") | fn.#Fn
			NotificationMetadata?:  string | fn.#Fn
			NotificationTargetARN?: string | fn.#Fn
			RoleARN?:               string | fn.#Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#ScalingPolicy: {
		Type:       "AWS::AutoScaling::ScalingPolicy"
		Properties: close({
			AdjustmentType?:          ("ChangeInCapacity" | "ExactCapacity" | "PercentChangeInCapacity") | fn.#Fn
			AutoScalingGroupName:     string | fn.#Fn
			Cooldown?:                string | fn.#Fn
			EstimatedInstanceWarmup?: int | fn.#Fn
			MetricAggregationType?:   ("Average" | "Maximum" | "Minimum") | fn.#Fn
			MinAdjustmentMagnitude?:  int | fn.#Fn
			PolicyType?:              ("SimpleScaling" | "StepScaling" | "TargetTrackingScaling") | fn.#Fn
			ScalingAdjustment?:       int | fn.#Fn
			StepAdjustments?:         [...close({
				MetricIntervalLowerBound?: number | fn.#Fn
				MetricIntervalUpperBound?: number | fn.#Fn
				ScalingAdjustment:         int | fn.#Fn
			})] | fn.If
			TargetTrackingConfiguration?: close({
				CustomizedMetricSpecification?: close({
					Dimensions?: [...close({
						Name:  string | fn.#Fn
						Value: string | fn.#Fn
					})] | fn.If
					MetricName: string | fn.#Fn
					Namespace:  string | fn.#Fn
					Statistic:  ("Average" | "Minimum" | "Maximum" | "SampleCount" | "Sum") | fn.#Fn
					Unit?:      string | fn.#Fn
				}) | fn.If
				DisableScaleIn?:                bool | fn.#Fn
				PredefinedMetricSpecification?: close({
					PredefinedMetricType: ("ALBRequestCountPerTarget" | "ASGAverageCPUUtilization" | "ASGAverageNetworkIn" | "ASGAverageNetworkOut") | fn.#Fn
					ResourceLabel?:       string | fn.#Fn
				}) | fn.If
				TargetValue: number | fn.#Fn
			}) | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#ScheduledAction: {
		Type:       "AWS::AutoScaling::ScheduledAction"
		Properties: close({
			AutoScalingGroupName: string | fn.#Fn
			DesiredCapacity?:     int | fn.#Fn
			EndTime?:             string | fn.#Fn
			MaxSize?:             int | fn.#Fn
			MinSize?:             int | fn.#Fn
			Recurrence?:          string | fn.#Fn
			StartTime?:           string | fn.#Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
