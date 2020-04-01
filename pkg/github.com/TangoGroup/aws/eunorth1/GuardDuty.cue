package eunorth1

import "github.com/TangoGroup/aws/fn"

GuardDuty :: {
	Detector :: {
		Type:       "AWS::GuardDuty::Detector"
		Properties: close({
			Enable:                      bool | fn.Fn
			FindingPublishingFrequency?: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Filter :: {
		Type:       "AWS::GuardDuty::Filter"
		Properties: close({
			Action:          string | fn.Fn
			Description:     string | fn.Fn
			DetectorId:      string | fn.Fn
			FindingCriteria: close({
			}) | fn.If
			Name: string | fn.Fn
			Rank: int | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	IPSet :: {
		Type:       "AWS::GuardDuty::IPSet"
		Properties: close({
			Activate:   bool | fn.Fn
			DetectorId: string | fn.Fn
			Format:     string | fn.Fn
			Location:   string | fn.Fn
			Name?:      string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Master :: {
		Type:       "AWS::GuardDuty::Master"
		Properties: close({
			DetectorId:    string | fn.Fn
			InvitationId?: string | fn.Fn
			MasterId:      string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Member :: {
		Type:       "AWS::GuardDuty::Member"
		Properties: close({
			DetectorId:                string | fn.Fn
			DisableEmailNotification?: bool | fn.Fn
			Email:                     string | fn.Fn
			MemberId:                  string | fn.Fn
			Message?:                  string | fn.Fn
			Status?:                   string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ThreatIntelSet :: {
		Type:       "AWS::GuardDuty::ThreatIntelSet"
		Properties: close({
			Activate:   bool | fn.Fn
			DetectorId: string | fn.Fn
			Format:     string | fn.Fn
			Location:   string | fn.Fn
			Name?:      string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
