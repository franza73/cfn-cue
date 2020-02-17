package apsoutheast1

import "github.com/TangoGroup/aws/fn"

MediaLive :: {
	Channel :: {
		Type: "AWS::MediaLive::Channel"
		Properties: {
			ChannelClass?: string | fn.Fn
			Destinations?: [...{
				Id?:                   string | fn.Fn
				MediaPackageSettings?: [...{
					ChannelId?: string | fn.Fn
				}] | fn.If
				MultiplexSettings?: {
					MultiplexId?: string | fn.Fn
					ProgramName?: string | fn.Fn
				} | fn.If
				Settings?: [...{
					PasswordParam?: string | fn.Fn
					StreamName?:    string | fn.Fn
					Url?:           string | fn.Fn
					Username?:      string | fn.Fn
				}] | fn.If
			}] | fn.If
			EncoderSettings?: {
				[string]: _
			} | fn.Fn
			InputAttachments?: [...{
				InputAttachmentName?: string | fn.Fn
				InputId?:             string | fn.Fn
				InputSettings?:       {
					AudioSelectors?: [...{
						Name?:             string | fn.Fn
						SelectorSettings?: {
							AudioLanguageSelection?: {
								LanguageCode?:            string | fn.Fn
								LanguageSelectionPolicy?: string | fn.Fn
							} | fn.If
							AudioPidSelection?: {
								Pid?: int | fn.Fn
							} | fn.If
						} | fn.If
					}] | fn.If
					CaptionSelectors?: [...{
						LanguageCode?:     string | fn.Fn
						Name?:             string | fn.Fn
						SelectorSettings?: {
							AribSourceSettings?: {
							} | fn.If
							DvbSubSourceSettings?: {
								Pid?: int | fn.Fn
							} | fn.If
							EmbeddedSourceSettings?: {
								Convert608To708?:        string | fn.Fn
								Scte20Detection?:        string | fn.Fn
								Source608ChannelNumber?: int | fn.Fn
								Source608TrackNumber?:   int | fn.Fn
							} | fn.If
							Scte20SourceSettings?: {
								Convert608To708?:        string | fn.Fn
								Source608ChannelNumber?: int | fn.Fn
							} | fn.If
							Scte27SourceSettings?: {
								Pid?: int | fn.Fn
							} | fn.If
							TeletextSourceSettings?: {
								PageNumber?: string | fn.Fn
							} | fn.If
						} | fn.If
					}] | fn.If
					DeblockFilter?:        string | fn.Fn
					DenoiseFilter?:        string | fn.Fn
					FilterStrength?:       int | fn.Fn
					InputFilter?:          string | fn.Fn
					NetworkInputSettings?: {
						HlsInputSettings?: {
							Bandwidth?:      int | fn.Fn
							BufferSegments?: int | fn.Fn
							Retries?:        int | fn.Fn
							RetryInterval?:  int | fn.Fn
						} | fn.If
						ServerValidation?: string | fn.Fn
					} | fn.If
					SourceEndBehavior?: string | fn.Fn
					VideoSelector?:     {
						ColorSpace?:       string | fn.Fn
						ColorSpaceUsage?:  string | fn.Fn
						SelectorSettings?: {
							VideoSelectorPid?: {
								Pid?: int | fn.Fn
							} | fn.If
							VideoSelectorProgramId?: {
								ProgramId?: int | fn.Fn
							} | fn.If
						} | fn.If
					} | fn.If
				} | fn.If
			}] | fn.If
			InputSpecification?: {
				Codec?:          string | fn.Fn
				MaximumBitrate?: string | fn.Fn
				Resolution?:     string | fn.Fn
			} | fn.If
			LogLevel?: string | fn.Fn
			Name?:     string | fn.Fn
			RoleArn?:  string | fn.Fn
			Tags?:     {
				[string]: _
			} | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Input :: {
		Type: "AWS::MediaLive::Input"
		Properties: {
			Destinations?: [...{
				StreamName?: string | fn.Fn
			}] | fn.If
			InputSecurityGroups?: [...(string | fn.Fn)] | (string | fn.Fn)
			MediaConnectFlows?:   [...{
				FlowArn?: string | fn.Fn
			}] | fn.If
			Name?:    string | fn.Fn
			RoleArn?: string | fn.Fn
			Sources?: [...{
				PasswordParam?: string | fn.Fn
				Url?:           string | fn.Fn
				Username?:      string | fn.Fn
			}] | fn.If
			Tags?: {
				[string]: _
			} | fn.Fn
			Type?: string | fn.Fn
			Vpc?:  {
				SecurityGroupIds?: [...(string | fn.Fn)] | (string | fn.Fn)
				SubnetIds?:        [...(string | fn.Fn)] | (string | fn.Fn)
			} | fn.If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	InputSecurityGroup :: {
		Type: "AWS::MediaLive::InputSecurityGroup"
		Properties: {
			Tags?: {
				[string]: _
			} | fn.Fn
			WhitelistRules?: [...{
				Cidr?: string | fn.Fn
			}] | fn.If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
