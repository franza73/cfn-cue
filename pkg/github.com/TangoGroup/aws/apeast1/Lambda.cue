package apeast1

import "github.com/TangoGroup/aws/fn"

#Lambda: {
	#Alias: {
		Type: "AWS::Lambda::Alias"
		Properties: {
			Description?:                  string | fn.#Fn
			FunctionName:                  string | fn.#Fn
			FunctionVersion:               string | fn.#Fn
			Name:                          string | fn.#Fn
			ProvisionedConcurrencyConfig?: {
				ProvisionedConcurrentExecutions: int | fn.#Fn
			} | fn.If
			RoutingConfig?: {
				AdditionalVersionWeights: [...{
					FunctionVersion: string | fn.#Fn
					FunctionWeight:  number | fn.#Fn
				}] | fn.If
			} | fn.If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		UpdatePolicy?: [string]: _
		Metadata?: [string]:     _
		Condition?: string
	}
	#EventInvokeConfig: {
		Type: "AWS::Lambda::EventInvokeConfig"
		Properties: {
			DestinationConfig?: {
				OnFailure?: {
					Destination: string | fn.#Fn
				} | fn.If
				OnSuccess?: {
					Destination: string | fn.#Fn
				} | fn.If
			} | fn.If
			FunctionName:              string | fn.#Fn
			MaximumEventAgeInSeconds?: int | fn.#Fn
			MaximumRetryAttempts?:     int | fn.#Fn
			Qualifier:                 string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#EventSourceMapping: {
		Type: "AWS::Lambda::EventSourceMapping"
		Properties: {
			BatchSize?:                  (>=1 & <=10000) | fn.#Fn
			BisectBatchOnFunctionError?: bool | fn.#Fn
			DestinationConfig?:          {
				OnFailure?: {
					Destination?: string | fn.#Fn
				} | fn.If
			} | fn.If
			Enabled?:                        bool | fn.#Fn
			EventSourceArn:                  string | fn.#Fn
			FunctionName:                    string | fn.#Fn
			MaximumBatchingWindowInSeconds?: int | fn.#Fn
			MaximumRecordAgeInSeconds?:      (>=-1 & <=604800) | fn.#Fn
			MaximumRetryAttempts?:           (>=-1 & <=10000) | fn.#Fn
			ParallelizationFactor?:          (>=1 & <=10) | fn.#Fn
			PartialBatchResponse?:           bool | fn.#Fn
			Queues?:                         [...(string | fn.#Fn)] | (string | fn.#Fn)
			SourceAccessConfigurations?:     [...{
				Type?: string | fn.#Fn
				URI?:  string | fn.#Fn
			}] | fn.If
			StartingPosition?:        ("AT_TIMESTAMP" | "LATEST" | "TRIM_HORIZON") | fn.#Fn
			Topics?:                  [...(string | fn.#Fn)] | (string | fn.#Fn)
			TumblingWindowInSeconds?: int | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Function: {
		Type: "AWS::Lambda::Function"
		Properties: {
			Code: {
				S3Bucket?:        string | fn.#Fn
				S3Key?:           string | fn.#Fn
				S3ObjectVersion?: string | fn.#Fn
				ZipFile?:         string | fn.#Fn
			} | fn.If
			DeadLetterConfig?: {
				TargetArn?: string | fn.#Fn
			} | fn.If
			Description?: string | fn.#Fn
			Environment?: {
				Variables?: {
					[string]: string | fn.#Fn
				} | fn.If
			} | fn.If
			FileSystemConfigs?: [...{
				Arn:            string | fn.#Fn
				LocalMountPath: string | fn.#Fn
			}] | fn.If
			FunctionName?:                 string | fn.#Fn
			Handler:                       string | fn.#Fn
			KmsKeyArn?:                    string | fn.#Fn
			Layers?:                       [...(string | fn.#Fn)] | (string | fn.#Fn)
			MemorySize?:                   (128 | 192 | 256 | 320 | 384 | 448 | 512 | 576 | 640 | 704 | 768 | 832 | 896 | 960 | 1024 | 1088 | 1152 | 1216 | 1280 | 1344 | 1408 | 1472 | 1536 | 1600 | 1664 | 1728 | 1792 | 1856 | 1920 | 1984 | 2048 | 2112 | 2176 | 2240 | 2304 | 2368 | 2432 | 2496 | 2560 | 2624 | 2688 | 2752 | 2816 | 2880 | 2944 | 3008) | fn.#Fn
			ReservedConcurrentExecutions?: int | fn.#Fn
			Role:                          (=~#"arn:(aws[a-zA-Z-]*)?:iam::\d{12}:role/[a-zA-Z_0-9+=,.@\-_/]+"#) | fn.#Fn
			Runtime:                       ("dotnetcore1.0" | "dotnetcore2.0" | "dotnetcore2.1" | "dotnetcore3.1" | "go1.x" | "java11" | "java8" | "java8.al2" | "nodejs" | "nodejs10.x" | "nodejs12.x" | "nodejs4.3" | "nodejs4.3-edge" | "nodejs6.10" | "nodejs8.10" | "provided" | "provided.al2" | "python2.7" | "python3.6" | "python3.7" | "python3.8" | "ruby2.5" | "ruby2.7") | fn.#Fn
			Tags?:                         [...{
				Key:   string | fn.#Fn
				Value: string | fn.#Fn
			}] | fn.If
			Timeout?:       (>=1 & <=900) | fn.#Fn
			TracingConfig?: {
				Mode?: string | fn.#Fn
			} | fn.If
			VpcConfig?: {
				SecurityGroupIds: [...(string | fn.#Fn)] | (string | fn.#Fn)
				SubnetIds:        [...(string | fn.#Fn)] | (string | fn.#Fn)
			} | fn.If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Permission: {
		Type: "AWS::Lambda::Permission"
		Properties: {
			Action:            string | fn.#Fn
			EventSourceToken?: string | fn.#Fn
			FunctionName:      string | fn.#Fn
			Principal:         string | fn.#Fn
			SourceAccount?:    string | fn.#Fn
			SourceArn?:        string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Version: {
		Type: "AWS::Lambda::Version"
		Properties: {
			CodeSha256?:                   string | fn.#Fn
			Description?:                  string | fn.#Fn
			FunctionName:                  string | fn.#Fn
			ProvisionedConcurrencyConfig?: {
				ProvisionedConcurrentExecutions: int | fn.#Fn
			} | fn.If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
