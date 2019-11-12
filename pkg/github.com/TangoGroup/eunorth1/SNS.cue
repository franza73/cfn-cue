package eunorth1

import "github.com/TangoGroup/fn"

SNS :: {
	Subscription :: {
		Type: "AWS::SNS::Subscription"
		Properties: {
			DeliveryPolicy?: {
				[string]: _
			} | fn.Fn
			Endpoint?:     string | fn.Fn
			FilterPolicy?: {
				[string]: _
			} | fn.Fn
			Protocol:            (string & ("application" | "email-json" | "email" | "http" | "https" | "lambda" | "sms" | "sqs")) | fn.Fn
			RawMessageDelivery?: bool | fn.Fn
			Region?:             string | fn.Fn
			TopicArn:            string | fn.Fn
		}
	}
	Topic :: {
		Type: "AWS::SNS::Topic"
		Properties: {
			DisplayName?:    string | fn.Fn
			KmsMasterKeyId?: string | fn.Fn
			Subscription?: [...{
				Endpoint: string | fn.Fn
				Protocol: string | fn.Fn
			}]
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			TopicName?: string | fn.Fn
		}
	}
	TopicPolicy :: {
		Type: "AWS::SNS::TopicPolicy"
		Properties: {
			PolicyDocument: {
				[string]: _
			} | fn.Fn
			Topics: [...(string | fn.Fn)]
		}
	}
}