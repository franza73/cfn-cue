package saeast1

import "github.com/TangoGroup/aws/fn"

Elasticsearch :: {
	Domain :: {
		Type:       "AWS::Elasticsearch::Domain"
		Properties: close({
			AccessPolicies?: {
				[string]: _
			} | fn.Fn
			AdvancedOptions?: {
				[string]: string | fn.Fn
			} | fn.If
			AdvancedSecurityOptions?: close({
				Enabled?:                     bool | fn.Fn
				InternalUserDatabaseEnabled?: bool | fn.Fn
				MasterUserOptions?:           close({
					MasterUserARN?:      string | fn.Fn
					MasterUserName?:     string | fn.Fn
					MasterUserPassword?: string | fn.Fn
				}) | fn.If
			}) | fn.If
			CognitoOptions?: close({
				Enabled?:        bool | fn.Fn
				IdentityPoolId?: string | fn.Fn
				RoleArn?:        string | fn.Fn
				UserPoolId?:     string | fn.Fn
			}) | fn.If
			DomainEndpointOptions?: close({
				CustomEndpoint?:               string | fn.Fn
				CustomEndpointCertificateArn?: string | fn.Fn
				CustomEndpointEnabled?:        bool | fn.Fn
				EnforceHTTPS?:                 bool | fn.Fn
				TLSSecurityPolicy?:            string | fn.Fn
			}) | fn.If
			DomainName?: string | fn.Fn
			EBSOptions?: close({
				EBSEnabled?: bool | fn.Fn
				Iops?:       int | fn.Fn
				VolumeSize?: int | fn.Fn
				VolumeType?: string | fn.Fn
			}) | fn.If
			ElasticsearchClusterConfig?: close({
				DedicatedMasterCount?:   int | fn.Fn
				DedicatedMasterEnabled?: bool | fn.Fn
				DedicatedMasterType?:    string | fn.Fn
				InstanceCount?:          int | fn.Fn
				InstanceType?:           ("c4.2xlarge.elasticsearch" | "c4.4xlarge.elasticsearch" | "c4.8xlarge.elasticsearch" | "c4.large.elasticsearch" | "c4.xlarge.elasticsearch" | "c5.18xlarge.elasticsearch" | "c5.2xlarge.elasticsearch" | "c5.4xlarge.elasticsearch" | "c5.9xlarge.elasticsearch" | "c5.large.elasticsearch" | "c5.xlarge.elasticsearch" | "i3.16xlarge.elasticsearch" | "i3.2xlarge.elasticsearch" | "i3.4xlarge.elasticsearch" | "i3.8xlarge.elasticsearch" | "i3.large.elasticsearch" | "i3.xlarge.elasticsearch" | "m3.2xlarge.elasticsearch" | "m3.large.elasticsearch" | "m3.medium.elasticsearch" | "m3.xlarge.elasticsearch" | "m4.10xlarge.elasticsearch" | "m4.2xlarge.elasticsearch" | "m4.4xlarge.elasticsearch" | "m4.large.elasticsearch" | "m4.xlarge.elasticsearch" | "m5.12xlarge.elasticsearch" | "m5.2xlarge.elasticsearch" | "m5.4xlarge.elasticsearch" | "m5.large.elasticsearch" | "m5.xlarge.elasticsearch" | "r4.16xlarge.elasticsearch" | "r4.2xlarge.elasticsearch" | "r4.4xlarge.elasticsearch" | "r4.8xlarge.elasticsearch" | "r4.large.elasticsearch" | "r4.xlarge.elasticsearch" | "t2.medium.elasticsearch" | "t2.micro.elasticsearch" | "t2.small.elasticsearch" | "t3.medium.elasticsearch" | "t3.small.elasticsearch" | "ultrawarm1.large.elasticsearch" | "ultrawarm1.medium.elasticsearch") | fn.Fn
				WarmCount?:              int | fn.Fn
				WarmEnabled?:            bool | fn.Fn
				WarmType?:               string | fn.Fn
				ZoneAwarenessConfig?:    close({
					AvailabilityZoneCount?: int | fn.Fn
				}) | fn.If
				ZoneAwarenessEnabled?: bool | fn.Fn
			}) | fn.If
			ElasticsearchVersion?:    string | fn.Fn
			EncryptionAtRestOptions?: close({
				Enabled?:  bool | fn.Fn
				KmsKeyId?: string | fn.Fn
			}) | fn.If
			LogPublishingOptions?: {
				[string]: close({
					CloudWatchLogsLogGroupArn?: string | fn.Fn
					Enabled?:                   bool | fn.Fn
				})
			} | fn.If
			NodeToNodeEncryptionOptions?: close({
				Enabled?: bool | fn.Fn
			}) | fn.If
			SnapshotOptions?: close({
				AutomatedSnapshotStartHour?: int | fn.Fn
			}) | fn.If
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			VPCOptions?: close({
				SecurityGroupIds?: [...(string | fn.Fn)] | (string | fn.Fn)
				SubnetIds?:        [...(string | fn.Fn)] | (string | fn.Fn)
			}) | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		UpdatePolicy?: [string]: _
		Metadata?: [string]:     _
		Condition?: string
	}
}
