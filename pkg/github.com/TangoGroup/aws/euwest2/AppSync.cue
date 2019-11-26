package euwest2

import "github.com/TangoGroup/aws/fn"

AppSync :: {
	ApiCache :: {
		Type: "AWS::AppSync::ApiCache"
		Properties: {
			ApiCachingBehavior:        string | fn.Fn
			ApiId:                     string | fn.Fn
			AtRestEncryptionEnabled?:  bool | fn.Fn
			TransitEncryptionEnabled?: bool | fn.Fn
			Ttl:                       float | fn.Fn
			Type:                      string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	GraphQLApi :: {
		Type: "AWS::AppSync::GraphQLApi"
		Properties: {
			AdditionalAuthenticationProviders?: [...{
				AuthenticationType: string | fn.Fn
				OpenIDConnectConfig?: {
					AuthTTL?:  float | fn.Fn
					ClientId?: string | fn.Fn
					IatTTL?:   float | fn.Fn
					Issuer?:   string | fn.Fn
				}
				UserPoolConfig?: {
					AppIdClientRegex?: string | fn.Fn
					AwsRegion?:        string | fn.Fn
					UserPoolId?:       string | fn.Fn
				}
			}]
			AuthenticationType: (string & ("AMAZON_COGNITO_USER_POOLS" | "API_KEY" | "AWS_IAM" | "OPENID_CONNECT")) | fn.Fn
			LogConfig?: {
				CloudWatchLogsRoleArn?: string | fn.Fn
				ExcludeVerboseContent?: bool | fn.Fn
				FieldLogLevel?:         string | fn.Fn
			}
			Name: string | fn.Fn
			OpenIDConnectConfig?: {
				AuthTTL?:  float | fn.Fn
				ClientId?: string | fn.Fn
				IatTTL?:   float | fn.Fn
				Issuer?:   string | fn.Fn
			}
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			UserPoolConfig?: {
				AppIdClientRegex?: string | fn.Fn
				AwsRegion?:        string | fn.Fn
				DefaultAction?:    string | fn.Fn
				UserPoolId?:       string | fn.Fn
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
}
