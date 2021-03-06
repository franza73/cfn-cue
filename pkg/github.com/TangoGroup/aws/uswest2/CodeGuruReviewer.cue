package uswest2

import "github.com/TangoGroup/aws/fn"

CodeGuruReviewer :: {
	RepositoryAssociation :: {
		Type:       "AWS::CodeGuruReviewer::RepositoryAssociation"
		Properties: close({
			ConnectionArn?: string | fn.Fn
			Name:           string | fn.Fn
			Owner?:         string | fn.Fn
			Tags?:          [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			Type: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
