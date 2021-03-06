package euwest3

import "github.com/TangoGroup/aws/fn"

Route53Resolver :: {
	ResolverDNSSECConfig :: {
		Type:       "AWS::Route53Resolver::ResolverDNSSECConfig"
		Properties: close({
			ResourceId?: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ResolverEndpoint :: {
		Type:       "AWS::Route53Resolver::ResolverEndpoint"
		Properties: close({
			Direction:   string | fn.Fn
			IpAddresses: [...close({
				Ip?:      string | fn.Fn
				SubnetId: string | fn.Fn
			})] | fn.If
			Name?:            string | fn.Fn
			SecurityGroupIds: [...(string | fn.Fn)] | (string | fn.Fn)
			Tags?:            [...close({
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
	ResolverQueryLoggingConfig :: {
		Type:       "AWS::Route53Resolver::ResolverQueryLoggingConfig"
		Properties: close({
			DestinationArn?: string | fn.Fn
			Name?:           string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ResolverQueryLoggingConfigAssociation :: {
		Type:       "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation"
		Properties: close({
			ResolverQueryLogConfigId?: string | fn.Fn
			ResourceId?:               string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ResolverRule :: {
		Type:       "AWS::Route53Resolver::ResolverRule"
		Properties: close({
			DomainName:          string | fn.Fn
			Name?:               string | fn.Fn
			ResolverEndpointId?: string | fn.Fn
			RuleType:            string | fn.Fn
			Tags?:               [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			TargetIps?: [...close({
				Ip:    string | fn.Fn
				Port?: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ResolverRuleAssociation :: {
		Type:       "AWS::Route53Resolver::ResolverRuleAssociation"
		Properties: close({
			Name?:          string | fn.Fn
			ResolverRuleId: string | fn.Fn
			VPCId:          string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
