package apnortheast3

import "github.com/TangoGroup/aws/fn"

Glue :: {
	Classifier :: {
		Type: "AWS::Glue::Classifier"
		Properties: {
			CsvClassifier?: {
				AllowSingleColumn?:    bool | fn.Fn
				ContainsHeader?:       string | fn.Fn
				Delimiter?:            string | fn.Fn
				DisableValueTrimming?: bool | fn.Fn
				Header?:               [...(string | fn.Fn)] | (string | fn.Fn)
				Name?:                 string | fn.Fn
				QuoteSymbol?:          string | fn.Fn
			}
			GrokClassifier?: {
				Classification:  string | fn.Fn
				CustomPatterns?: string | fn.Fn
				GrokPattern:     string | fn.Fn
				Name?:           string | fn.Fn
			}
			JsonClassifier?: {
				JsonPath: string | fn.Fn
				Name?:    string | fn.Fn
			}
			XMLClassifier?: {
				Classification: string | fn.Fn
				Name?:          string | fn.Fn
				RowTag:         string | fn.Fn
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Connection :: {
		Type: "AWS::Glue::Connection"
		Properties: {
			CatalogId: string | fn.Fn
			ConnectionInput: {
				ConnectionProperties: {
					[string]: _
				} | fn.Fn
				ConnectionType: ("JDBC" | "SFTP") | fn.Fn
				Description?:   string | fn.Fn
				MatchCriteria?: [...(string | fn.Fn)] | (string | fn.Fn)
				Name?:          string | fn.Fn
				PhysicalConnectionRequirements?: {
					AvailabilityZone?:    string | fn.Fn
					SecurityGroupIdList?: [...(string | fn.Fn)] | (string | fn.Fn)
					SubnetId?:            string | fn.Fn
				}
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Crawler :: {
		Type: "AWS::Glue::Crawler"
		Properties: {
			Classifiers?:                  [...(string | fn.Fn)] | (string | fn.Fn)
			Configuration?:                string | fn.Fn
			CrawlerSecurityConfiguration?: string | fn.Fn
			DatabaseName?:                 string | fn.Fn
			Description?:                  string | fn.Fn
			Name?:                         string | fn.Fn
			Role:                          string | fn.Fn
			Schedule?: ScheduleExpression?: string | fn.Fn
			SchemaChangePolicy?: {
				DeleteBehavior?: ("DELETE_FROM_DATABASE" | "DEPRECATE_IN_DATABASE" | "LOG") | fn.Fn
				UpdateBehavior?: ("LOG" | "UPDATE_IN_DATABASE") | fn.Fn
			}
			TablePrefix?: string | fn.Fn
			Tags?:        {
				[string]: _
			} | fn.Fn
			Targets: {
				CatalogTargets?: [...{
					DatabaseName?: string | fn.Fn
					Tables?:       [...(string | fn.Fn)] | (string | fn.Fn)
				}]
				DynamoDBTargets?: [...{
					Path?: string | fn.Fn
				}]
				JdbcTargets?: [...{
					ConnectionName?: string | fn.Fn
					Exclusions?:     [...(string | fn.Fn)] | (string | fn.Fn)
					Path?:           string | fn.Fn
				}]
				S3Targets?: [...{
					Exclusions?: [...(string | fn.Fn)] | (string | fn.Fn)
					Path?:       string | fn.Fn
				}]
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DataCatalogEncryptionSettings :: {
		Type: "AWS::Glue::DataCatalogEncryptionSettings"
		Properties: {
			CatalogId: string | fn.Fn
			DataCatalogEncryptionSettings: {
				ConnectionPasswordEncryption?: {
					KmsKeyId?:                          string | fn.Fn
					ReturnConnectionPasswordEncrypted?: bool | fn.Fn
				}
				EncryptionAtRest?: {
					CatalogEncryptionMode?: string | fn.Fn
					SseAwsKmsKeyId?:        string | fn.Fn
				}
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Database :: {
		Type: "AWS::Glue::Database"
		Properties: {
			CatalogId: string | fn.Fn
			DatabaseInput: {
				Description?: string | fn.Fn
				LocationUri?: string | fn.Fn
				Name?:        string | fn.Fn
				Parameters?:  {
					[string]: _
				} | fn.Fn
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DevEndpoint :: {
		Type: "AWS::Glue::DevEndpoint"
		Properties: {
			Arguments?: {
				[string]: _
			} | fn.Fn
			EndpointName?:          string | fn.Fn
			ExtraJarsS3Path?:       string | fn.Fn
			ExtraPythonLibsS3Path?: string | fn.Fn
			GlueVersion?:           string | fn.Fn
			NumberOfNodes?:         int | fn.Fn
			NumberOfWorkers?:       int | fn.Fn
			PublicKey?:             string | fn.Fn
			RoleArn:                string | fn.Fn
			SecurityConfiguration?: string | fn.Fn
			SecurityGroupIds?:      [...(string | fn.Fn)] | (string | fn.Fn)
			SubnetId?:              string | fn.Fn
			Tags?:                  {
				[string]: _
			} | fn.Fn
			WorkerType?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Job :: {
		Type: "AWS::Glue::Job"
		Properties: {
			AllocatedCapacity?: number | fn.Fn
			Command: {
				Name?:           string | fn.Fn
				PythonVersion?:  string | fn.Fn
				ScriptLocation?: string | fn.Fn
			}
			Connections?: Connections?: [...(string | fn.Fn)] | (string | fn.Fn)
			DefaultArguments?: {
				[string]: _
			} | fn.Fn
			Description?: string | fn.Fn
			ExecutionProperty?: MaxConcurrentRuns?: number | fn.Fn
			GlueVersion?: string | fn.Fn
			LogUri?:      string | fn.Fn
			MaxCapacity?: number | fn.Fn
			MaxRetries?:  number | fn.Fn
			Name?:        string | fn.Fn
			NotificationProperty?: NotifyDelayAfter?: int | fn.Fn
			NumberOfWorkers?:       (>=0 & <=299) | fn.Fn
			Role:                   string | fn.Fn
			SecurityConfiguration?: string | fn.Fn
			Tags?:                  {
				[string]: _
			} | fn.Fn
			Timeout?:    int | fn.Fn
			WorkerType?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	MLTransform :: {
		Type: "AWS::Glue::MLTransform"
		Properties: {
			Description?: string | fn.Fn
			GlueVersion?: string | fn.Fn
			InputRecordTables: GlueTables?: [...{
				CatalogId?:      string | fn.Fn
				ConnectionName?: string | fn.Fn
				DatabaseName:    string | fn.Fn
				TableName:       string | fn.Fn
			}]
			MaxCapacity?:     (>=1 & <=100) | fn.Fn
			MaxRetries?:      int | fn.Fn
			Name?:            string | fn.Fn
			NumberOfWorkers?: int | fn.Fn
			Role:             string | fn.Fn
			Timeout?:         int | fn.Fn
			TransformParameters: {
				FindMatchesParameters?: {
					AccuracyCostTradeoff?:    number | fn.Fn
					EnforceProvidedLabels?:   bool | fn.Fn
					PrecisionRecallTradeoff?: number | fn.Fn
					PrimaryKeyColumnName:     string | fn.Fn
				}
				TransformType: string | fn.Fn
			}
			WorkerType?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Partition :: {
		Type: "AWS::Glue::Partition"
		Properties: {
			CatalogId:    string | fn.Fn
			DatabaseName: string | fn.Fn
			PartitionInput: {
				Parameters?: {
					[string]: _
				} | fn.Fn
				StorageDescriptor?: {
					BucketColumns?: [...(string | fn.Fn)] | (string | fn.Fn)
					Columns?: [...{
						Comment?: string | fn.Fn
						Name:     string | fn.Fn
						Type?:    string | fn.Fn
					}]
					Compressed?:      bool | fn.Fn
					InputFormat?:     string | fn.Fn
					Location?:        string | fn.Fn
					NumberOfBuckets?: int | fn.Fn
					OutputFormat?:    string | fn.Fn
					Parameters?:      {
						[string]: _
					} | fn.Fn
					SerdeInfo?: {
						Name?:       string | fn.Fn
						Parameters?: {
							[string]: _
						} | fn.Fn
						SerializationLibrary?: string | fn.Fn
					}
					SkewedInfo?: {
						SkewedColumnNames?:             [...(string | fn.Fn)] | (string | fn.Fn)
						SkewedColumnValueLocationMaps?: {
							[string]: _
						} | fn.Fn
						SkewedColumnValues?: [...(string | fn.Fn)] | (string | fn.Fn)
					}
					SortColumns?: [...{
						Column:     string | fn.Fn
						SortOrder?: int | fn.Fn
					}]
					StoredAsSubDirectories?: bool | fn.Fn
				}
				Values: [...(string | fn.Fn)] | (string | fn.Fn)
			}
			TableName: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	SecurityConfiguration :: {
		Type: "AWS::Glue::SecurityConfiguration"
		Properties: {
			EncryptionConfiguration: {
				CloudWatchEncryption?: {
					CloudWatchEncryptionMode?: string | fn.Fn
					KmsKeyArn?:                string | fn.Fn
				}
				JobBookmarksEncryption?: {
					JobBookmarksEncryptionMode?: string | fn.Fn
					KmsKeyArn?:                  string | fn.Fn
				}
				S3Encryptions?: [...{
					KmsKeyArn?:        string | fn.Fn
					S3EncryptionMode?: string | fn.Fn
				}]
			}
			Name: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Table :: {
		Type: "AWS::Glue::Table"
		Properties: {
			CatalogId:    string | fn.Fn
			DatabaseName: string | fn.Fn
			TableInput: {
				Description?: string | fn.Fn
				Name?:        string | fn.Fn
				Owner?:       string | fn.Fn
				Parameters?:  {
					[string]: _
				} | fn.Fn
				PartitionKeys?: [...{
					Comment?: string | fn.Fn
					Name:     string | fn.Fn
					Type?:    string | fn.Fn
				}]
				Retention?: int | fn.Fn
				StorageDescriptor?: {
					BucketColumns?: [...(string | fn.Fn)] | (string | fn.Fn)
					Columns?: [...{
						Comment?: string | fn.Fn
						Name:     string | fn.Fn
						Type?:    string | fn.Fn
					}]
					Compressed?:      bool | fn.Fn
					InputFormat?:     string | fn.Fn
					Location?:        string | fn.Fn
					NumberOfBuckets?: int | fn.Fn
					OutputFormat?:    string | fn.Fn
					Parameters?:      {
						[string]: _
					} | fn.Fn
					SerdeInfo?: {
						Name?:       string | fn.Fn
						Parameters?: {
							[string]: _
						} | fn.Fn
						SerializationLibrary?: string | fn.Fn
					}
					SkewedInfo?: {
						SkewedColumnNames?:             [...(string | fn.Fn)] | (string | fn.Fn)
						SkewedColumnValueLocationMaps?: {
							[string]: _
						} | fn.Fn
						SkewedColumnValues?: [...(string | fn.Fn)] | (string | fn.Fn)
					}
					SortColumns?: [...{
						Column:    string | fn.Fn
						SortOrder: int | fn.Fn
					}]
					StoredAsSubDirectories?: bool | fn.Fn
				}
				TableType?:        ("EXTERNAL_TABLE" | "VIRTUAL_VIEW") | fn.Fn
				ViewExpandedText?: string | fn.Fn
				ViewOriginalText?: string | fn.Fn
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Trigger :: {
		Type: "AWS::Glue::Trigger"
		Properties: {
			Actions: [...{
				Arguments?: {
					[string]: _
				} | fn.Fn
				CrawlerName?: string | fn.Fn
				JobName?:     string | fn.Fn
				NotificationProperty?: NotifyDelayAfter?: int | fn.Fn
				SecurityConfiguration?: string | fn.Fn
				Timeout?:               int | fn.Fn
			}]
			Description?: string | fn.Fn
			Name?:        string | fn.Fn
			Predicate?: {
				Conditions?: [...{
					CrawlState?:      string | fn.Fn
					CrawlerName?:     string | fn.Fn
					JobName?:         string | fn.Fn
					LogicalOperator?: ("EQUALS") | fn.Fn
					State?:           ("SUCCEEDED") | fn.Fn
				}]
				Logical?: ("AND") | fn.Fn
			}
			Schedule?:        string | fn.Fn
			StartOnCreation?: bool | fn.Fn
			Tags?:            {
				[string]: _
			} | fn.Fn
			Type:          ("CONDITIONAL" | "ON_DEMAND" | "SCHEDULED") | fn.Fn
			WorkflowName?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Workflow :: {
		Type: "AWS::Glue::Workflow"
		Properties: {
			DefaultRunProperties?: {
				[string]: _
			} | fn.Fn
			Description?: string | fn.Fn
			Name?:        string | fn.Fn
			Tags?:        {
				[string]: _
			} | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
