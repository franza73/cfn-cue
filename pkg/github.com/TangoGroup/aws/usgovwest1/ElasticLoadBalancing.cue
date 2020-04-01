package usgovwest1

import "github.com/TangoGroup/aws/fn"

ElasticLoadBalancing :: {
	LoadBalancer :: {
		Type:       "AWS::ElasticLoadBalancing::LoadBalancer"
		Properties: close({
			AccessLoggingPolicy?: close({
				EmitInterval?:   int | fn.Fn
				Enabled:         bool | fn.Fn
				S3BucketName:    string | fn.Fn
				S3BucketPrefix?: string | fn.Fn
			}) | fn.If
			AppCookieStickinessPolicy?: [...close({
				CookieName: string | fn.Fn
				PolicyName: string | fn.Fn
			})] | fn.If
			AvailabilityZones?:        [...(string | fn.Fn)] | (string | fn.Fn)
			ConnectionDrainingPolicy?: close({
				Enabled:  bool | fn.Fn
				Timeout?: int | fn.Fn
			}) | fn.If
			ConnectionSettings?: close({
				IdleTimeout: int | fn.Fn
			}) | fn.If
			CrossZone?:   bool | fn.Fn
			HealthCheck?: close({
				HealthyThreshold:   string | fn.Fn
				Interval:           string | fn.Fn
				Target:             string | fn.Fn
				Timeout:            string | fn.Fn
				UnhealthyThreshold: string | fn.Fn
			}) | fn.If
			Instances?:                [...(string | fn.Fn)] | (string | fn.Fn)
			LBCookieStickinessPolicy?: [...close({
				CookieExpirationPeriod?: string | fn.Fn
				PolicyName?:             string | fn.Fn
			})] | fn.If
			Listeners: [...close({
				InstancePort:      (>=1 & <=65535) | fn.Fn
				InstanceProtocol?: string | fn.Fn
				LoadBalancerPort:  (>=1 & <=65535) | fn.Fn
				PolicyNames?:      [...(string | fn.Fn)] | (string | fn.Fn)
				Protocol:          string | fn.Fn
				SSLCertificateId?: string | fn.Fn
			})] | fn.If
			LoadBalancerName?: string | fn.Fn
			Policies?:         [...close({
				Attributes: [...({
					[string]: _
				} | fn.Fn)] | ({
					[string]: _
				} | fn.Fn)
				InstancePorts?:     [...(string | fn.Fn)] | (string | fn.Fn)
				LoadBalancerPorts?: [...(string | fn.Fn)] | (string | fn.Fn)
				PolicyName:         string | fn.Fn
				PolicyType:         string | fn.Fn
			})] | fn.If
			Scheme?:         string | fn.Fn
			SecurityGroups?: [...(string | fn.Fn)] | (string | fn.Fn)
			Subnets?:        [...(string | fn.Fn)] | (string | fn.Fn)
			Tags?:           [...close({
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
