package eucentral1

import "github.com/TangoGroup/aws/fn"

ACMPCA :: {
	Certificate :: {
		Type:       "AWS::ACMPCA::Certificate"
		Properties: close({
			ApiPassthrough?: close({
				Extensions?: close({
					CertificatePolicies?: close({
						CertificatePolicyList?: [...close({
							CertPolicyId:      string | fn.Fn
							PolicyQualifiers?: close({
								PolicyQualifierInfoList?: [...close({
									PolicyQualifierId: string | fn.Fn
									Qualifier:         close({
										CpsUri: string | fn.Fn
									}) | fn.If
								})] | fn.If
							}) | fn.If
						})] | fn.If
					}) | fn.If
					ExtendedKeyUsage?: close({
						ExtendedKeyUsageList?: [...close({
							ExtendedKeyUsageObjectIdentifier?: string | fn.Fn
							ExtendedKeyUsageType?:             string | fn.Fn
						})] | fn.If
					}) | fn.If
					KeyUsage?: close({
						CRLSign?:          bool | fn.Fn
						DataEncipherment?: bool | fn.Fn
						DecipherOnly?:     bool | fn.Fn
						DigitalSignature?: bool | fn.Fn
						EncipherOnly?:     bool | fn.Fn
						KeyAgreement?:     bool | fn.Fn
						KeyCertSign?:      bool | fn.Fn
						KeyEncipherment?:  bool | fn.Fn
						NonRepudiation?:   bool | fn.Fn
					}) | fn.If
					SubjectAlternativeNames?: close({
						GeneralNameList?: [...close({
							DirectoryName?: close({
								CommonName?:                 string | fn.Fn
								Country?:                    string | fn.Fn
								DistinguishedNameQualifier?: string | fn.Fn
								GenerationQualifier?:        string | fn.Fn
								GivenName?:                  string | fn.Fn
								Initials?:                   string | fn.Fn
								Locality?:                   string | fn.Fn
								Organization?:               string | fn.Fn
								OrganizationalUnit?:         string | fn.Fn
								Pseudonym?:                  string | fn.Fn
								SerialNumber?:               string | fn.Fn
								State?:                      string | fn.Fn
								Surname?:                    string | fn.Fn
								Title?:                      string | fn.Fn
							}) | fn.If
							DnsName?:      string | fn.Fn
							EdiPartyName?: close({
								NameAssigner: string | fn.Fn
								PartyName:    string | fn.Fn
							}) | fn.If
							IpAddress?: string | fn.Fn
							OtherName?: close({
								TypeId: string | fn.Fn
								Value:  string | fn.Fn
							}) | fn.If
							RegisteredId?:              string | fn.Fn
							Rfc822Name?:                string | fn.Fn
							UniformResourceIdentifier?: string | fn.Fn
						})] | fn.If
					}) | fn.If
				}) | fn.If
				Subject?: close({
					CommonName?:                 string | fn.Fn
					Country?:                    string | fn.Fn
					DistinguishedNameQualifier?: string | fn.Fn
					GenerationQualifier?:        string | fn.Fn
					GivenName?:                  string | fn.Fn
					Initials?:                   string | fn.Fn
					Locality?:                   string | fn.Fn
					Organization?:               string | fn.Fn
					OrganizationalUnit?:         string | fn.Fn
					Pseudonym?:                  string | fn.Fn
					SerialNumber?:               string | fn.Fn
					State?:                      string | fn.Fn
					Surname?:                    string | fn.Fn
					Title?:                      string | fn.Fn
				}) | fn.If
			}) | fn.If
			CertificateAuthorityArn:   string | fn.Fn
			CertificateSigningRequest: string | fn.Fn
			SigningAlgorithm:          string | fn.Fn
			TemplateArn?:              string | fn.Fn
			Validity:                  close({
				Type:  string | fn.Fn
				Value: int | fn.Fn
			}) | fn.If
			ValidityNotBefore?: close({
				Type:  string | fn.Fn
				Value: int | fn.Fn
			}) | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	CertificateAuthority :: {
		Type:       "AWS::ACMPCA::CertificateAuthority"
		Properties: close({
			CsrExtensions?: close({
				KeyUsage?: close({
					CRLSign?:          bool | fn.Fn
					DataEncipherment?: bool | fn.Fn
					DecipherOnly?:     bool | fn.Fn
					DigitalSignature?: bool | fn.Fn
					EncipherOnly?:     bool | fn.Fn
					KeyAgreement?:     bool | fn.Fn
					KeyCertSign?:      bool | fn.Fn
					KeyEncipherment?:  bool | fn.Fn
					NonRepudiation?:   bool | fn.Fn
				}) | fn.If
				SubjectInformationAccess?: close({
					SubjectInformationAccess?: [...close({
						[string]: _
					})] | fn.If
				}) | fn.If
			}) | fn.If
			KeyAlgorithm:             string | fn.Fn
			RevocationConfiguration?: close({
				CrlConfiguration?: close({
					CustomCname?:      string | fn.Fn
					Enabled?:          bool | fn.Fn
					ExpirationInDays?: int | fn.Fn
					S3BucketName?:     string | fn.Fn
				}) | fn.If
			}) | fn.If
			SigningAlgorithm: string | fn.Fn
			Subject:          close({
				CommonName?:                 string | fn.Fn
				Country?:                    string | fn.Fn
				DistinguishedNameQualifier?: string | fn.Fn
				GenerationQualifier?:        string | fn.Fn
				GivenName?:                  string | fn.Fn
				Initials?:                   string | fn.Fn
				Locality?:                   string | fn.Fn
				Organization?:               string | fn.Fn
				OrganizationalUnit?:         string | fn.Fn
				Pseudonym?:                  string | fn.Fn
				SerialNumber?:               string | fn.Fn
				State?:                      string | fn.Fn
				Surname?:                    string | fn.Fn
				Title?:                      string | fn.Fn
			}) | fn.If
			Tags?: [...close({
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
	CertificateAuthorityActivation :: {
		Type:       "AWS::ACMPCA::CertificateAuthorityActivation"
		Properties: close({
			Certificate:             string | fn.Fn
			CertificateAuthorityArn: string | fn.Fn
			CertificateChain?:       string | fn.Fn
			Status?:                 string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}