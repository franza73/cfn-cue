package useast1

import "github.com/TangoGroup/aws/fn"

ECR :: {
	PublicRepository :: {
		Type:       "AWS::ECR::PublicRepository"
		Properties: close({
			RepositoryCatalogData?: {
				[string]: _
			} | fn.Fn
			RepositoryName?:       string | fn.Fn
			RepositoryPolicyText?: {
				[string]: _
			} | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Repository :: {
		Type:       "AWS::ECR::Repository"
		Properties: close({
			ImageScanningConfiguration?: {
				[string]: _
			} | fn.Fn
			ImageTagMutability?: string | fn.Fn
			LifecyclePolicy?:    close({
				LifecyclePolicyText?: string | fn.Fn
				RegistryId?:          string | fn.Fn
			}) | fn.If
			RepositoryName?:       string | fn.Fn
			RepositoryPolicyText?: {
				[string]: _
			} | fn.Fn
			Tags?: [...close({
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
