package usgovwest1

import "github.com/TangoGroup/aws/fn"

AppStream :: {
	DirectoryConfig :: {
		Type:       "AWS::AppStream::DirectoryConfig"
		Properties: close({
			DirectoryName:                        string | fn.Fn
			OrganizationalUnitDistinguishedNames: [...(string | fn.Fn)] | (string | fn.Fn)
			ServiceAccountCredentials:            close({
				AccountName:     string | fn.Fn
				AccountPassword: string | fn.Fn
			}) | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Fleet :: {
		Type:       "AWS::AppStream::Fleet"
		Properties: close({
			ComputeCapacity: close({
				DesiredInstances: int | fn.Fn
			}) | fn.If
			Description?:                string | fn.Fn
			DisconnectTimeoutInSeconds?: (>=60 & <=360000) | fn.Fn
			DisplayName?:                string | fn.Fn
			DomainJoinInfo?:             close({
				DirectoryName?:                       string | fn.Fn
				OrganizationalUnitDistinguishedName?: string | fn.Fn
			}) | fn.If
			EnableDefaultInternetAccess?:    bool | fn.Fn
			FleetType?:                      string | fn.Fn
			IamRoleArn?:                     string | fn.Fn
			IdleDisconnectTimeoutInSeconds?: (>=0 & <=3600) | fn.Fn
			ImageArn?:                       string | fn.Fn
			ImageName?:                      string | fn.Fn
			InstanceType:                    ("stream.compute.2xlarge" | "stream.compute.4xlarge" | "stream.compute.8xlarge" | "stream.compute.large" | "stream.compute.xlarge" | "stream.graphics-pro.16xlarge" | "stream.graphics-pro.4xlarge" | "stream.graphics-pro.8xlarge" | "stream.graphics.g4dn.12xlarge" | "stream.graphics.g4dn.16xlarge" | "stream.graphics.g4dn.2xlarge" | "stream.graphics.g4dn.4xlarge" | "stream.graphics.g4dn.8xlarge" | "stream.graphics.g4dn.xlarge" | "stream.memory.2xlarge" | "stream.memory.4xlarge" | "stream.memory.8xlarge" | "stream.memory.large" | "stream.memory.xlarge" | "stream.standard.large" | "stream.standard.medium" | "stream.standard.small") | fn.Fn
			MaxUserDurationInSeconds?:       (>=600 & <=360000) | fn.Fn
			Name:                            string | fn.Fn
			StreamView?:                     string | fn.Fn
			Tags?:                           [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			VpcConfig?: close({
				SecurityGroupIds?: [...(string | fn.Fn)] | (string | fn.Fn)
				SubnetIds?:        [...(string | fn.Fn)] | (string | fn.Fn)
			}) | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ImageBuilder :: {
		Type:       "AWS::AppStream::ImageBuilder"
		Properties: close({
			AccessEndpoints?: [...close({
				EndpointType: string | fn.Fn
				VpceId:       string | fn.Fn
			})] | fn.If
			AppstreamAgentVersion?: string | fn.Fn
			Description?:           string | fn.Fn
			DisplayName?:           string | fn.Fn
			DomainJoinInfo?:        close({
				DirectoryName?:                       string | fn.Fn
				OrganizationalUnitDistinguishedName?: string | fn.Fn
			}) | fn.If
			EnableDefaultInternetAccess?: bool | fn.Fn
			IamRoleArn?:                  string | fn.Fn
			ImageArn?:                    string | fn.Fn
			ImageName?:                   string | fn.Fn
			InstanceType:                 ("stream.compute.2xlarge" | "stream.compute.4xlarge" | "stream.compute.8xlarge" | "stream.compute.large" | "stream.compute.xlarge" | "stream.graphics-pro.16xlarge" | "stream.graphics-pro.4xlarge" | "stream.graphics-pro.8xlarge" | "stream.graphics.g4dn.12xlarge" | "stream.graphics.g4dn.16xlarge" | "stream.graphics.g4dn.2xlarge" | "stream.graphics.g4dn.4xlarge" | "stream.graphics.g4dn.8xlarge" | "stream.graphics.g4dn.xlarge" | "stream.memory.2xlarge" | "stream.memory.4xlarge" | "stream.memory.8xlarge" | "stream.memory.large" | "stream.memory.xlarge" | "stream.standard.large" | "stream.standard.medium" | "stream.standard.small") | fn.Fn
			Name:                         string | fn.Fn
			Tags?:                        [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			VpcConfig?: close({
				SecurityGroupIds?: [...(string | fn.Fn)] | (string | fn.Fn)
				SubnetIds?:        [...(string | fn.Fn)] | (string | fn.Fn)
			}) | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Stack :: {
		Type:       "AWS::AppStream::Stack"
		Properties: close({
			AccessEndpoints?: [...close({
				EndpointType: string | fn.Fn
				VpceId:       string | fn.Fn
			})] | fn.If
			ApplicationSettings?: close({
				Enabled:        bool | fn.Fn
				SettingsGroup?: string | fn.Fn
			}) | fn.If
			AttributesToDelete?:      [...(string | fn.Fn)] | (string | fn.Fn)
			DeleteStorageConnectors?: bool | fn.Fn
			Description?:             string | fn.Fn
			DisplayName?:             string | fn.Fn
			EmbedHostDomains?:        [...(string | fn.Fn)] | (string | fn.Fn)
			FeedbackURL?:             string | fn.Fn
			Name?:                    string | fn.Fn
			RedirectURL?:             string | fn.Fn
			StorageConnectors?:       [...close({
				ConnectorType:       string | fn.Fn
				Domains?:            [...(string | fn.Fn)] | (string | fn.Fn)
				ResourceIdentifier?: string | fn.Fn
			})] | fn.If
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			UserSettings?: [...close({
				Action:     string | fn.Fn
				Permission: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	StackFleetAssociation :: {
		Type:       "AWS::AppStream::StackFleetAssociation"
		Properties: close({
			FleetName: string | fn.Fn
			StackName: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
