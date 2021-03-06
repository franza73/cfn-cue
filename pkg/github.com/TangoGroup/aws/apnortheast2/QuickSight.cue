package apnortheast2

import "github.com/TangoGroup/aws/fn"

QuickSight :: {
	Analysis :: {
		Type:       "AWS::QuickSight::Analysis"
		Properties: close({
			AnalysisId:   string | fn.Fn
			AwsAccountId: string | fn.Fn
			Errors?:      [...close({
				Message?: string | fn.Fn
				Type?:    string | fn.Fn
			})] | fn.If
			Name?:       string | fn.Fn
			Parameters?: close({
				DateTimeParameters?: [...close({
					Name:   string | fn.Fn
					Values: [...(string | fn.Fn)] | (string | fn.Fn)
				})] | fn.If
				DecimalParameters?: [...close({
					Name:   string | fn.Fn
					Values: [...(number | fn.Fn)] | (number | fn.Fn)
				})] | fn.If
				IntegerParameters?: [...close({
					Name:   string | fn.Fn
					Values: [...(number | fn.Fn)] | (number | fn.Fn)
				})] | fn.If
				StringParameters?: [...close({
					Name:   string | fn.Fn
					Values: [...(string | fn.Fn)] | (string | fn.Fn)
				})] | fn.If
			}) | fn.If
			Permissions?: [...close({
				Actions:   [...(string | fn.Fn)] | (string | fn.Fn)
				Principal: string | fn.Fn
			})] | fn.If
			SourceEntity?: close({
				SourceTemplate?: close({
					Arn:               string | fn.Fn
					DataSetReferences: [...close({
						DataSetArn:         string | fn.Fn
						DataSetPlaceholder: string | fn.Fn
					})] | fn.If
				}) | fn.If
			}) | fn.If
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			ThemeArn?: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Dashboard :: {
		Type:       "AWS::QuickSight::Dashboard"
		Properties: close({
			AwsAccountId:             string | fn.Fn
			DashboardId:              string | fn.Fn
			DashboardPublishOptions?: close({
				AdHocFilteringOption?: close({
					AvailabilityStatus?: string | fn.Fn
				}) | fn.If
				ExportToCSVOption?: close({
					AvailabilityStatus?: string | fn.Fn
				}) | fn.If
				SheetControlsOption?: close({
					VisibilityState?: string | fn.Fn
				}) | fn.If
			}) | fn.If
			Name?:       string | fn.Fn
			Parameters?: close({
				DateTimeParameters?: [...close({
					Name:   string | fn.Fn
					Values: [...(string | fn.Fn)] | (string | fn.Fn)
				})] | fn.If
				DecimalParameters?: [...close({
					Name:   string | fn.Fn
					Values: [...(number | fn.Fn)] | (number | fn.Fn)
				})] | fn.If
				IntegerParameters?: [...close({
					Name:   string | fn.Fn
					Values: [...(number | fn.Fn)] | (number | fn.Fn)
				})] | fn.If
				StringParameters?: [...close({
					Name:   string | fn.Fn
					Values: [...(string | fn.Fn)] | (string | fn.Fn)
				})] | fn.If
			}) | fn.If
			Permissions?: [...close({
				Actions:   [...(string | fn.Fn)] | (string | fn.Fn)
				Principal: string | fn.Fn
			})] | fn.If
			SourceEntity?: close({
				SourceTemplate?: close({
					Arn:               string | fn.Fn
					DataSetReferences: [...close({
						DataSetArn:         string | fn.Fn
						DataSetPlaceholder: string | fn.Fn
					})] | fn.If
				}) | fn.If
			}) | fn.If
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			ThemeArn?:           string | fn.Fn
			VersionDescription?: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Template :: {
		Type:       "AWS::QuickSight::Template"
		Properties: close({
			AwsAccountId: string | fn.Fn
			Name?:        string | fn.Fn
			Permissions?: [...close({
				Actions:   [...(string | fn.Fn)] | (string | fn.Fn)
				Principal: string | fn.Fn
			})] | fn.If
			SourceEntity?: close({
				SourceAnalysis?: close({
					Arn:               string | fn.Fn
					DataSetReferences: [...close({
						DataSetArn:         string | fn.Fn
						DataSetPlaceholder: string | fn.Fn
					})] | fn.If
				}) | fn.If
				SourceTemplate?: close({
					Arn: string | fn.Fn
				}) | fn.If
			}) | fn.If
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			TemplateId:          string | fn.Fn
			VersionDescription?: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Theme :: {
		Type:       "AWS::QuickSight::Theme"
		Properties: close({
			AwsAccountId:   string | fn.Fn
			BaseThemeId?:   string | fn.Fn
			Configuration?: close({
				DataColorPalette?: close({
					Colors?:         [...(string | fn.Fn)] | (string | fn.Fn)
					EmptyFillColor?: string | fn.Fn
					MinMaxGradient?: [...(string | fn.Fn)] | (string | fn.Fn)
				}) | fn.If
				Sheet?: close({
					Tile?: close({
						Border?: close({
							Show?: bool | fn.Fn
						}) | fn.If
					}) | fn.If
					TileLayout?: close({
						Gutter?: close({
							Show?: bool | fn.Fn
						}) | fn.If
						Margin?: close({
							Show?: bool | fn.Fn
						}) | fn.If
					}) | fn.If
				}) | fn.If
				Typography?: close({
					FontFamilies?: [...close({
						FontFamily?: string | fn.Fn
					})] | fn.If
				}) | fn.If
				UIColorPalette?: close({
					Accent?:              string | fn.Fn
					AccentForeground?:    string | fn.Fn
					Danger?:              string | fn.Fn
					DangerForeground?:    string | fn.Fn
					Dimension?:           string | fn.Fn
					DimensionForeground?: string | fn.Fn
					Measure?:             string | fn.Fn
					MeasureForeground?:   string | fn.Fn
					PrimaryBackground?:   string | fn.Fn
					PrimaryForeground?:   string | fn.Fn
					SecondaryBackground?: string | fn.Fn
					SecondaryForeground?: string | fn.Fn
					Success?:             string | fn.Fn
					SuccessForeground?:   string | fn.Fn
					Warning?:             string | fn.Fn
					WarningForeground?:   string | fn.Fn
				}) | fn.If
			}) | fn.If
			Name?:        string | fn.Fn
			Permissions?: [...close({
				Actions:   [...(string | fn.Fn)] | (string | fn.Fn)
				Principal: string | fn.Fn
			})] | fn.If
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			ThemeId:             string | fn.Fn
			VersionDescription?: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
