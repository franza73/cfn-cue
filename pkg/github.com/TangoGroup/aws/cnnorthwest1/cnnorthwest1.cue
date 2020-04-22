package cnnorthwest1

import "github.com/TangoGroup/aws/fn"

ResourceSpecificationVersion :: "13.0.0"
Template :: {
	AWSTemplateFormatVersion?: "2010-09-09"
	Description?:              string
	Metadata?: [string]: _
	Mappings?: [string]: [string]: [=~"[a-zA-Z0-9]"]: string | int | bool | [...(string | int | bool)]
	Conditions?: [string]: fn.And | fn.Equals | fn.If | fn.Not | fn.Or
	Parameters?: [=~"[a-zA-Z0-9]"]: {
		Type:                   "AWS::EC2::AvailabilityZone::Name" | "AWS::EC2::Image::Id" | "AWS::EC2::Instance::Id" | "AWS::EC2::KeyPair::KeyName" | "AWS::EC2::SecurityGroup::GroupName" | "AWS::EC2::SecurityGroup::Id" | "AWS::EC2::Subnet::Id" | "AWS::EC2::VPC::Id" | "AWS::EC2::Volume::Id" | "AWS::Route53::HostedZone::Id" | "AWS::SSM::Parameter::Name" | "AWS::SSM::Parameter::Value<AWS::EC2::AvailabilityZone::Name>" | "AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Instance::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::KeyPair::KeyName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::GroupName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Subnet::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::VPC::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Volume::Id>" | "AWS::SSM::Parameter::Value<AWS::Route53::HostedZone::Id>" | "AWS::SSM::Parameter::Value<CommaDelimitedList>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::AvailabilityZone::Name>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Image::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Instance::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::KeyPair::KeyName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::GroupName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Subnet::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::VPC::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Volume::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::Route53::HostedZone::Id>>" | "AWS::SSM::Parameter::Value<List<String>>" | "AWS::SSM::Parameter::Value<String>" | "CommaDelimitedList" | "List<AWS::EC2::AvailabilityZone::Name>" | "List<AWS::EC2::Image::Id>" | "List<AWS::EC2::Instance::Id>" | "List<AWS::EC2::SecurityGroup::GroupName>" | "List<AWS::EC2::SecurityGroup::Id>" | "List<AWS::EC2::Subnet::Id>" | "List<AWS::EC2::VPC::Id>" | "List<AWS::EC2::Volume::Id>" | "List<AWS::Route53::HostedZone::Id>" | "List<Number>" | "Number" | "String"
		AllowedPattern?:        string
		AllowedValues?:         [...(string | number | bool)]
		ConstraintDescription?: string
		Default?:               string | number | bool
		Description?:           string
		MaxLength?:             int | =~"^[0-9]+$"
		MaxValue?:              int | =~"^[0-9]+$"
		MinLength?:             int | =~"^[0-9]+$"
		MinValue?:              int | =~"^[0-9]+$"
		NoEcho?:                bool | =~"^(true|false)$"
	}
	Resources: [=~"[a-zA-Z0-9]"]: {
		Description?: string
		Type:         "AWS::ApiGateway::Account" | "AWS::ApiGateway::ApiKey" | "AWS::ApiGateway::Authorizer" | "AWS::ApiGateway::BasePathMapping" | "AWS::ApiGateway::ClientCertificate" | "AWS::ApiGateway::Deployment" | "AWS::ApiGateway::DocumentationPart" | "AWS::ApiGateway::DocumentationVersion" | "AWS::ApiGateway::DomainName" | "AWS::ApiGateway::GatewayResponse" | "AWS::ApiGateway::Method" | "AWS::ApiGateway::Model" | "AWS::ApiGateway::RequestValidator" | "AWS::ApiGateway::Resource" | "AWS::ApiGateway::RestApi" | "AWS::ApiGateway::Stage" | "AWS::ApiGateway::UsagePlan" | "AWS::ApiGateway::UsagePlanKey" | "AWS::ApiGateway::VpcLink" | "AWS::ApiGatewayV2::ApiMapping" | "AWS::ApiGatewayV2::DomainName" | "AWS::ApplicationAutoScaling::ScalableTarget" | "AWS::ApplicationAutoScaling::ScalingPolicy" | "AWS::Athena::WorkGroup" | "AWS::AutoScaling::AutoScalingGroup" | "AWS::AutoScaling::LaunchConfiguration" | "AWS::AutoScaling::LifecycleHook" | "AWS::AutoScaling::ScalingPolicy" | "AWS::AutoScaling::ScheduledAction" | "AWS::Backup::BackupPlan" | "AWS::Batch::ComputeEnvironment" | "AWS::CDK::Metadata" | "AWS::CertificateManager::Certificate" | "AWS::CloudFormation::CustomResource" | "AWS::CloudFormation::Macro" | "AWS::CloudFormation::Stack" | "AWS::CloudFormation::WaitCondition" | "AWS::CloudFormation::WaitConditionHandle" | "AWS::CloudFront::CloudFrontOriginAccessIdentity" | "AWS::CloudFront::Distribution" | "AWS::CloudFront::StreamingDistribution" | "AWS::CloudTrail::Trail" | "AWS::CloudWatch::Alarm" | "AWS::CloudWatch::AnomalyDetector" | "AWS::CloudWatch::CompositeAlarm" | "AWS::CloudWatch::Dashboard" | "AWS::CloudWatch::InsightRule" | "AWS::CodeBuild::Project" | "AWS::CodeBuild::ReportGroup" | "AWS::CodeBuild::SourceCredential" | "AWS::CodeDeploy::Application" | "AWS::CodeDeploy::DeploymentConfig" | "AWS::CodeDeploy::DeploymentGroup" | "AWS::Config::ConfigRule" | "AWS::Config::ConfigurationRecorder" | "AWS::Config::DeliveryChannel" | "AWS::DAX::Cluster" | "AWS::DAX::ParameterGroup" | "AWS::DAX::SubnetGroup" | "AWS::DMS::Certificate" | "AWS::DMS::Endpoint" | "AWS::DMS::EventSubscription" | "AWS::DMS::ReplicationInstance" | "AWS::DMS::ReplicationSubnetGroup" | "AWS::DMS::ReplicationTask" | "AWS::DirectoryService::MicrosoftAD" | "AWS::DirectoryService::SimpleAD" | "AWS::DynamoDB::Table" | "AWS::EC2::CustomerGateway" | "AWS::EC2::DHCPOptions" | "AWS::EC2::EC2Fleet" | "AWS::EC2::EIP" | "AWS::EC2::EIPAssociation" | "AWS::EC2::EgressOnlyInternetGateway" | "AWS::EC2::FlowLog" | "AWS::EC2::GatewayRouteTableAssociation" | "AWS::EC2::Host" | "AWS::EC2::Instance" | "AWS::EC2::InternetGateway" | "AWS::EC2::LaunchTemplate" | "AWS::EC2::NatGateway" | "AWS::EC2::NetworkAcl" | "AWS::EC2::NetworkAclEntry" | "AWS::EC2::NetworkInterface" | "AWS::EC2::NetworkInterfaceAttachment" | "AWS::EC2::NetworkInterfacePermission" | "AWS::EC2::PlacementGroup" | "AWS::EC2::Route" | "AWS::EC2::RouteTable" | "AWS::EC2::SecurityGroup" | "AWS::EC2::SecurityGroupEgress" | "AWS::EC2::SecurityGroupIngress" | "AWS::EC2::SpotFleet" | "AWS::EC2::Subnet" | "AWS::EC2::SubnetCidrBlock" | "AWS::EC2::SubnetNetworkAclAssociation" | "AWS::EC2::SubnetRouteTableAssociation" | "AWS::EC2::VPC" | "AWS::EC2::VPCCidrBlock" | "AWS::EC2::VPCDHCPOptionsAssociation" | "AWS::EC2::VPCEndpoint" | "AWS::EC2::VPCEndpointConnectionNotification" | "AWS::EC2::VPCEndpointService" | "AWS::EC2::VPCEndpointServicePermissions" | "AWS::EC2::VPCGatewayAttachment" | "AWS::EC2::VPCPeeringConnection" | "AWS::EC2::VPNConnection" | "AWS::EC2::VPNConnectionRoute" | "AWS::EC2::VPNGateway" | "AWS::EC2::VPNGatewayRoutePropagation" | "AWS::EC2::Volume" | "AWS::EC2::VolumeAttachment" | "AWS::ECR::Repository" | "AWS::ECS::Cluster" | "AWS::ECS::PrimaryTaskSet" | "AWS::ECS::Service" | "AWS::ECS::TaskDefinition" | "AWS::ECS::TaskSet" | "AWS::EFS::FileSystem" | "AWS::EFS::MountTarget" | "AWS::EKS::Cluster" | "AWS::EKS::Nodegroup" | "AWS::EMR::Cluster" | "AWS::EMR::InstanceFleetConfig" | "AWS::EMR::InstanceGroupConfig" | "AWS::EMR::SecurityConfiguration" | "AWS::EMR::Step" | "AWS::ElastiCache::CacheCluster" | "AWS::ElastiCache::ParameterGroup" | "AWS::ElastiCache::ReplicationGroup" | "AWS::ElastiCache::SecurityGroup" | "AWS::ElastiCache::SecurityGroupIngress" | "AWS::ElastiCache::SubnetGroup" | "AWS::ElasticBeanstalk::Application" | "AWS::ElasticBeanstalk::ApplicationVersion" | "AWS::ElasticBeanstalk::ConfigurationTemplate" | "AWS::ElasticBeanstalk::Environment" | "AWS::ElasticLoadBalancing::LoadBalancer" | "AWS::ElasticLoadBalancingV2::Listener" | "AWS::ElasticLoadBalancingV2::ListenerCertificate" | "AWS::ElasticLoadBalancingV2::ListenerRule" | "AWS::ElasticLoadBalancingV2::LoadBalancer" | "AWS::ElasticLoadBalancingV2::TargetGroup" | "AWS::Elasticsearch::Domain" | "AWS::Events::EventBus" | "AWS::Events::EventBusPolicy" | "AWS::Events::Rule" | "AWS::Glue::Classifier" | "AWS::Glue::Connection" | "AWS::Glue::Crawler" | "AWS::Glue::DataCatalogEncryptionSettings" | "AWS::Glue::Database" | "AWS::Glue::DevEndpoint" | "AWS::Glue::Job" | "AWS::Glue::MLTransform" | "AWS::Glue::Partition" | "AWS::Glue::SecurityConfiguration" | "AWS::Glue::Table" | "AWS::Glue::Trigger" | "AWS::Glue::Workflow" | "AWS::IAM::AccessKey" | "AWS::IAM::Group" | "AWS::IAM::InstanceProfile" | "AWS::IAM::ManagedPolicy" | "AWS::IAM::Policy" | "AWS::IAM::Role" | "AWS::IAM::User" | "AWS::IAM::UserToGroupAddition" | "AWS::IoT::Certificate" | "AWS::IoT::Policy" | "AWS::IoT::PolicyPrincipalAttachment" | "AWS::IoT::Thing" | "AWS::IoT::ThingPrincipalAttachment" | "AWS::IoT::TopicRule" | "AWS::KMS::Alias" | "AWS::KMS::Key" | "AWS::Kinesis::Stream" | "AWS::Kinesis::StreamConsumer" | "AWS::KinesisFirehose::DeliveryStream" | "AWS::Lambda::Alias" | "AWS::Lambda::EventInvokeConfig" | "AWS::Lambda::EventSourceMapping" | "AWS::Lambda::Function" | "AWS::Lambda::LayerVersion" | "AWS::Lambda::LayerVersionPermission" | "AWS::Lambda::Permission" | "AWS::Lambda::Version" | "AWS::Logs::Destination" | "AWS::Logs::LogGroup" | "AWS::Logs::LogStream" | "AWS::Logs::MetricFilter" | "AWS::Logs::SubscriptionFilter" | "AWS::Neptune::DBCluster" | "AWS::Neptune::DBClusterParameterGroup" | "AWS::Neptune::DBInstance" | "AWS::Neptune::DBParameterGroup" | "AWS::Neptune::DBSubnetGroup" | "AWS::RDS::DBCluster" | "AWS::RDS::DBClusterParameterGroup" | "AWS::RDS::DBInstance" | "AWS::RDS::DBParameterGroup" | "AWS::RDS::DBSecurityGroup" | "AWS::RDS::DBSecurityGroupIngress" | "AWS::RDS::DBSubnetGroup" | "AWS::RDS::EventSubscription" | "AWS::RDS::OptionGroup" | "AWS::Redshift::Cluster" | "AWS::Redshift::ClusterParameterGroup" | "AWS::Redshift::ClusterSecurityGroup" | "AWS::Redshift::ClusterSecurityGroupIngress" | "AWS::Redshift::ClusterSubnetGroup" | "AWS::S3::AccessPoint" | "AWS::S3::Bucket" | "AWS::S3::BucketPolicy" | "AWS::SNS::Subscription" | "AWS::SNS::Topic" | "AWS::SNS::TopicPolicy" | "AWS::SQS::Queue" | "AWS::SQS::QueuePolicy" | "AWS::SSM::Association" | "AWS::SSM::Document" | "AWS::SSM::MaintenanceWindow" | "AWS::SSM::MaintenanceWindowTarget" | "AWS::SSM::ResourceDataSync" | "AWS::SecretsManager::ResourcePolicy" | "AWS::SecretsManager::RotationSchedule" | "AWS::SecretsManager::Secret" | "AWS::SecretsManager::SecretTargetAttachment" | "AWS::StepFunctions::Activity" | "AWS::StepFunctions::StateMachine" | "AWS::WAF::ByteMatchSet" | "AWS::WAF::IPSet" | "AWS::WAF::Rule" | "AWS::WAF::SizeConstraintSet" | "AWS::WAF::SqlInjectionMatchSet" | "AWS::WAF::WebACL" | "AWS::WAF::XssMatchSet" | "AWS::WorkSpaces::Workspace" | =~#"^Custom::[a-zA-Z0-9_@-]{1,60}$"#
		Properties: [string]: _
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain" | "Snapshot"
		UpdateReplacePolicy?: "Delete" | "Retain" | "Snapshot"
		CreationPolicy?:      _
		UpdatePolicy?:        _
		Metadata?: [string]: _
		Condition?: string
	}
	Outputs?: [=~"[a-zA-Z0-9]"]: {
		Description?: string
		Value:        _
		Condition?:   string
		Export?: Name: _
	}
}
ResourceTypesMap: {
	"AWS::ApiGateway::Account":                         ApiGateway.Account
	"AWS::ApiGateway::ApiKey":                          ApiGateway.ApiKey
	"AWS::ApiGateway::Authorizer":                      ApiGateway.Authorizer
	"AWS::ApiGateway::BasePathMapping":                 ApiGateway.BasePathMapping
	"AWS::ApiGateway::ClientCertificate":               ApiGateway.ClientCertificate
	"AWS::ApiGateway::Deployment":                      ApiGateway.Deployment
	"AWS::ApiGateway::DocumentationPart":               ApiGateway.DocumentationPart
	"AWS::ApiGateway::DocumentationVersion":            ApiGateway.DocumentationVersion
	"AWS::ApiGateway::DomainName":                      ApiGateway.DomainName
	"AWS::ApiGateway::GatewayResponse":                 ApiGateway.GatewayResponse
	"AWS::ApiGateway::Method":                          ApiGateway.Method
	"AWS::ApiGateway::Model":                           ApiGateway.Model
	"AWS::ApiGateway::RequestValidator":                ApiGateway.RequestValidator
	"AWS::ApiGateway::Resource":                        ApiGateway.Resource
	"AWS::ApiGateway::RestApi":                         ApiGateway.RestApi
	"AWS::ApiGateway::Stage":                           ApiGateway.Stage
	"AWS::ApiGateway::UsagePlan":                       ApiGateway.UsagePlan
	"AWS::ApiGateway::UsagePlanKey":                    ApiGateway.UsagePlanKey
	"AWS::ApiGateway::VpcLink":                         ApiGateway.VpcLink
	"AWS::ApiGatewayV2::ApiMapping":                    ApiGatewayV2.ApiMapping
	"AWS::ApiGatewayV2::DomainName":                    ApiGatewayV2.DomainName
	"AWS::ApplicationAutoScaling::ScalableTarget":      ApplicationAutoScaling.ScalableTarget
	"AWS::ApplicationAutoScaling::ScalingPolicy":       ApplicationAutoScaling.ScalingPolicy
	"AWS::Athena::WorkGroup":                           Athena.WorkGroup
	"AWS::AutoScaling::AutoScalingGroup":               AutoScaling.AutoScalingGroup
	"AWS::AutoScaling::LaunchConfiguration":            AutoScaling.LaunchConfiguration
	"AWS::AutoScaling::LifecycleHook":                  AutoScaling.LifecycleHook
	"AWS::AutoScaling::ScalingPolicy":                  AutoScaling.ScalingPolicy
	"AWS::AutoScaling::ScheduledAction":                AutoScaling.ScheduledAction
	"AWS::Backup::BackupPlan":                          Backup.BackupPlan
	"AWS::Batch::ComputeEnvironment":                   Batch.ComputeEnvironment
	"AWS::CDK::Metadata":                               CDK.Metadata
	"AWS::CertificateManager::Certificate":             CertificateManager.Certificate
	"AWS::CloudFormation::CustomResource":              CloudFormation.CustomResource
	"AWS::CloudFormation::Macro":                       CloudFormation.Macro
	"AWS::CloudFormation::Stack":                       CloudFormation.Stack
	"AWS::CloudFormation::WaitCondition":               CloudFormation.WaitCondition
	"AWS::CloudFormation::WaitConditionHandle":         CloudFormation.WaitConditionHandle
	"AWS::CloudFront::CloudFrontOriginAccessIdentity":  CloudFront.CloudFrontOriginAccessIdentity
	"AWS::CloudFront::Distribution":                    CloudFront.Distribution
	"AWS::CloudFront::StreamingDistribution":           CloudFront.StreamingDistribution
	"AWS::CloudTrail::Trail":                           CloudTrail.Trail
	"AWS::CloudWatch::Alarm":                           CloudWatch.Alarm
	"AWS::CloudWatch::AnomalyDetector":                 CloudWatch.AnomalyDetector
	"AWS::CloudWatch::CompositeAlarm":                  CloudWatch.CompositeAlarm
	"AWS::CloudWatch::Dashboard":                       CloudWatch.Dashboard
	"AWS::CloudWatch::InsightRule":                     CloudWatch.InsightRule
	"AWS::CodeBuild::Project":                          CodeBuild.Project
	"AWS::CodeBuild::ReportGroup":                      CodeBuild.ReportGroup
	"AWS::CodeBuild::SourceCredential":                 CodeBuild.SourceCredential
	"AWS::CodeDeploy::Application":                     CodeDeploy.Application
	"AWS::CodeDeploy::DeploymentConfig":                CodeDeploy.DeploymentConfig
	"AWS::CodeDeploy::DeploymentGroup":                 CodeDeploy.DeploymentGroup
	"AWS::Config::ConfigRule":                          Config.ConfigRule
	"AWS::Config::ConfigurationRecorder":               Config.ConfigurationRecorder
	"AWS::Config::DeliveryChannel":                     Config.DeliveryChannel
	"AWS::DAX::Cluster":                                DAX.Cluster
	"AWS::DAX::ParameterGroup":                         DAX.ParameterGroup
	"AWS::DAX::SubnetGroup":                            DAX.SubnetGroup
	"AWS::DMS::Certificate":                            DMS.Certificate
	"AWS::DMS::Endpoint":                               DMS.Endpoint
	"AWS::DMS::EventSubscription":                      DMS.EventSubscription
	"AWS::DMS::ReplicationInstance":                    DMS.ReplicationInstance
	"AWS::DMS::ReplicationSubnetGroup":                 DMS.ReplicationSubnetGroup
	"AWS::DMS::ReplicationTask":                        DMS.ReplicationTask
	"AWS::DirectoryService::MicrosoftAD":               DirectoryService.MicrosoftAD
	"AWS::DirectoryService::SimpleAD":                  DirectoryService.SimpleAD
	"AWS::DynamoDB::Table":                             DynamoDB.Table
	"AWS::EC2::CustomerGateway":                        EC2.CustomerGateway
	"AWS::EC2::DHCPOptions":                            EC2.DHCPOptions
	"AWS::EC2::EC2Fleet":                               EC2.EC2Fleet
	"AWS::EC2::EIP":                                    EC2.EIP
	"AWS::EC2::EIPAssociation":                         EC2.EIPAssociation
	"AWS::EC2::EgressOnlyInternetGateway":              EC2.EgressOnlyInternetGateway
	"AWS::EC2::FlowLog":                                EC2.FlowLog
	"AWS::EC2::GatewayRouteTableAssociation":           EC2.GatewayRouteTableAssociation
	"AWS::EC2::Host":                                   EC2.Host
	"AWS::EC2::Instance":                               EC2.Instance
	"AWS::EC2::InternetGateway":                        EC2.InternetGateway
	"AWS::EC2::LaunchTemplate":                         EC2.LaunchTemplate
	"AWS::EC2::NatGateway":                             EC2.NatGateway
	"AWS::EC2::NetworkAcl":                             EC2.NetworkAcl
	"AWS::EC2::NetworkAclEntry":                        EC2.NetworkAclEntry
	"AWS::EC2::NetworkInterface":                       EC2.NetworkInterface
	"AWS::EC2::NetworkInterfaceAttachment":             EC2.NetworkInterfaceAttachment
	"AWS::EC2::NetworkInterfacePermission":             EC2.NetworkInterfacePermission
	"AWS::EC2::PlacementGroup":                         EC2.PlacementGroup
	"AWS::EC2::Route":                                  EC2.Route
	"AWS::EC2::RouteTable":                             EC2.RouteTable
	"AWS::EC2::SecurityGroup":                          EC2.SecurityGroup
	"AWS::EC2::SecurityGroupEgress":                    EC2.SecurityGroupEgress
	"AWS::EC2::SecurityGroupIngress":                   EC2.SecurityGroupIngress
	"AWS::EC2::SpotFleet":                              EC2.SpotFleet
	"AWS::EC2::Subnet":                                 EC2.Subnet
	"AWS::EC2::SubnetCidrBlock":                        EC2.SubnetCidrBlock
	"AWS::EC2::SubnetNetworkAclAssociation":            EC2.SubnetNetworkAclAssociation
	"AWS::EC2::SubnetRouteTableAssociation":            EC2.SubnetRouteTableAssociation
	"AWS::EC2::VPC":                                    EC2.VPC
	"AWS::EC2::VPCCidrBlock":                           EC2.VPCCidrBlock
	"AWS::EC2::VPCDHCPOptionsAssociation":              EC2.VPCDHCPOptionsAssociation
	"AWS::EC2::VPCEndpoint":                            EC2.VPCEndpoint
	"AWS::EC2::VPCEndpointConnectionNotification":      EC2.VPCEndpointConnectionNotification
	"AWS::EC2::VPCEndpointService":                     EC2.VPCEndpointService
	"AWS::EC2::VPCEndpointServicePermissions":          EC2.VPCEndpointServicePermissions
	"AWS::EC2::VPCGatewayAttachment":                   EC2.VPCGatewayAttachment
	"AWS::EC2::VPCPeeringConnection":                   EC2.VPCPeeringConnection
	"AWS::EC2::VPNConnection":                          EC2.VPNConnection
	"AWS::EC2::VPNConnectionRoute":                     EC2.VPNConnectionRoute
	"AWS::EC2::VPNGateway":                             EC2.VPNGateway
	"AWS::EC2::VPNGatewayRoutePropagation":             EC2.VPNGatewayRoutePropagation
	"AWS::EC2::Volume":                                 EC2.Volume
	"AWS::EC2::VolumeAttachment":                       EC2.VolumeAttachment
	"AWS::ECR::Repository":                             ECR.Repository
	"AWS::ECS::Cluster":                                ECS.Cluster
	"AWS::ECS::PrimaryTaskSet":                         ECS.PrimaryTaskSet
	"AWS::ECS::Service":                                ECS.Service
	"AWS::ECS::TaskDefinition":                         ECS.TaskDefinition
	"AWS::ECS::TaskSet":                                ECS.TaskSet
	"AWS::EFS::FileSystem":                             EFS.FileSystem
	"AWS::EFS::MountTarget":                            EFS.MountTarget
	"AWS::EKS::Cluster":                                EKS.Cluster
	"AWS::EKS::Nodegroup":                              EKS.Nodegroup
	"AWS::EMR::Cluster":                                EMR.Cluster
	"AWS::EMR::InstanceFleetConfig":                    EMR.InstanceFleetConfig
	"AWS::EMR::InstanceGroupConfig":                    EMR.InstanceGroupConfig
	"AWS::EMR::SecurityConfiguration":                  EMR.SecurityConfiguration
	"AWS::EMR::Step":                                   EMR.Step
	"AWS::ElastiCache::CacheCluster":                   ElastiCache.CacheCluster
	"AWS::ElastiCache::ParameterGroup":                 ElastiCache.ParameterGroup
	"AWS::ElastiCache::ReplicationGroup":               ElastiCache.ReplicationGroup
	"AWS::ElastiCache::SecurityGroup":                  ElastiCache.SecurityGroup
	"AWS::ElastiCache::SecurityGroupIngress":           ElastiCache.SecurityGroupIngress
	"AWS::ElastiCache::SubnetGroup":                    ElastiCache.SubnetGroup
	"AWS::ElasticBeanstalk::Application":               ElasticBeanstalk.Application
	"AWS::ElasticBeanstalk::ApplicationVersion":        ElasticBeanstalk.ApplicationVersion
	"AWS::ElasticBeanstalk::ConfigurationTemplate":     ElasticBeanstalk.ConfigurationTemplate
	"AWS::ElasticBeanstalk::Environment":               ElasticBeanstalk.Environment
	"AWS::ElasticLoadBalancing::LoadBalancer":          ElasticLoadBalancing.LoadBalancer
	"AWS::ElasticLoadBalancingV2::Listener":            ElasticLoadBalancingV2.Listener
	"AWS::ElasticLoadBalancingV2::ListenerCertificate": ElasticLoadBalancingV2.ListenerCertificate
	"AWS::ElasticLoadBalancingV2::ListenerRule":        ElasticLoadBalancingV2.ListenerRule
	"AWS::ElasticLoadBalancingV2::LoadBalancer":        ElasticLoadBalancingV2.LoadBalancer
	"AWS::ElasticLoadBalancingV2::TargetGroup":         ElasticLoadBalancingV2.TargetGroup
	"AWS::Elasticsearch::Domain":                       Elasticsearch.Domain
	"AWS::Events::EventBus":                            Events.EventBus
	"AWS::Events::EventBusPolicy":                      Events.EventBusPolicy
	"AWS::Events::Rule":                                Events.Rule
	"AWS::Glue::Classifier":                            Glue.Classifier
	"AWS::Glue::Connection":                            Glue.Connection
	"AWS::Glue::Crawler":                               Glue.Crawler
	"AWS::Glue::DataCatalogEncryptionSettings":         Glue.DataCatalogEncryptionSettings
	"AWS::Glue::Database":                              Glue.Database
	"AWS::Glue::DevEndpoint":                           Glue.DevEndpoint
	"AWS::Glue::Job":                                   Glue.Job
	"AWS::Glue::MLTransform":                           Glue.MLTransform
	"AWS::Glue::Partition":                             Glue.Partition
	"AWS::Glue::SecurityConfiguration":                 Glue.SecurityConfiguration
	"AWS::Glue::Table":                                 Glue.Table
	"AWS::Glue::Trigger":                               Glue.Trigger
	"AWS::Glue::Workflow":                              Glue.Workflow
	"AWS::IAM::AccessKey":                              IAM.AccessKey
	"AWS::IAM::Group":                                  IAM.Group
	"AWS::IAM::InstanceProfile":                        IAM.InstanceProfile
	"AWS::IAM::ManagedPolicy":                          IAM.ManagedPolicy
	"AWS::IAM::Policy":                                 IAM.Policy
	"AWS::IAM::Role":                                   IAM.Role
	"AWS::IAM::User":                                   IAM.User
	"AWS::IAM::UserToGroupAddition":                    IAM.UserToGroupAddition
	"AWS::IoT::Certificate":                            IoT.Certificate
	"AWS::IoT::Policy":                                 IoT.Policy
	"AWS::IoT::PolicyPrincipalAttachment":              IoT.PolicyPrincipalAttachment
	"AWS::IoT::Thing":                                  IoT.Thing
	"AWS::IoT::ThingPrincipalAttachment":               IoT.ThingPrincipalAttachment
	"AWS::IoT::TopicRule":                              IoT.TopicRule
	"AWS::KMS::Alias":                                  KMS.Alias
	"AWS::KMS::Key":                                    KMS.Key
	"AWS::Kinesis::Stream":                             Kinesis.Stream
	"AWS::Kinesis::StreamConsumer":                     Kinesis.StreamConsumer
	"AWS::KinesisFirehose::DeliveryStream":             KinesisFirehose.DeliveryStream
	"AWS::Lambda::Alias":                               Lambda.Alias
	"AWS::Lambda::EventInvokeConfig":                   Lambda.EventInvokeConfig
	"AWS::Lambda::EventSourceMapping":                  Lambda.EventSourceMapping
	"AWS::Lambda::Function":                            Lambda.Function
	"AWS::Lambda::LayerVersion":                        Lambda.LayerVersion
	"AWS::Lambda::LayerVersionPermission":              Lambda.LayerVersionPermission
	"AWS::Lambda::Permission":                          Lambda.Permission
	"AWS::Lambda::Version":                             Lambda.Version
	"AWS::Logs::Destination":                           Logs.Destination
	"AWS::Logs::LogGroup":                              Logs.LogGroup
	"AWS::Logs::LogStream":                             Logs.LogStream
	"AWS::Logs::MetricFilter":                          Logs.MetricFilter
	"AWS::Logs::SubscriptionFilter":                    Logs.SubscriptionFilter
	"AWS::Neptune::DBCluster":                          Neptune.DBCluster
	"AWS::Neptune::DBClusterParameterGroup":            Neptune.DBClusterParameterGroup
	"AWS::Neptune::DBInstance":                         Neptune.DBInstance
	"AWS::Neptune::DBParameterGroup":                   Neptune.DBParameterGroup
	"AWS::Neptune::DBSubnetGroup":                      Neptune.DBSubnetGroup
	"AWS::RDS::DBCluster":                              RDS.DBCluster
	"AWS::RDS::DBClusterParameterGroup":                RDS.DBClusterParameterGroup
	"AWS::RDS::DBInstance":                             RDS.DBInstance
	"AWS::RDS::DBParameterGroup":                       RDS.DBParameterGroup
	"AWS::RDS::DBSecurityGroup":                        RDS.DBSecurityGroup
	"AWS::RDS::DBSecurityGroupIngress":                 RDS.DBSecurityGroupIngress
	"AWS::RDS::DBSubnetGroup":                          RDS.DBSubnetGroup
	"AWS::RDS::EventSubscription":                      RDS.EventSubscription
	"AWS::RDS::OptionGroup":                            RDS.OptionGroup
	"AWS::Redshift::Cluster":                           Redshift.Cluster
	"AWS::Redshift::ClusterParameterGroup":             Redshift.ClusterParameterGroup
	"AWS::Redshift::ClusterSecurityGroup":              Redshift.ClusterSecurityGroup
	"AWS::Redshift::ClusterSecurityGroupIngress":       Redshift.ClusterSecurityGroupIngress
	"AWS::Redshift::ClusterSubnetGroup":                Redshift.ClusterSubnetGroup
	"AWS::S3::AccessPoint":                             S3.AccessPoint
	"AWS::S3::Bucket":                                  S3.Bucket
	"AWS::S3::BucketPolicy":                            S3.BucketPolicy
	"AWS::SNS::Subscription":                           SNS.Subscription
	"AWS::SNS::Topic":                                  SNS.Topic
	"AWS::SNS::TopicPolicy":                            SNS.TopicPolicy
	"AWS::SQS::Queue":                                  SQS.Queue
	"AWS::SQS::QueuePolicy":                            SQS.QueuePolicy
	"AWS::SSM::Association":                            SSM.Association
	"AWS::SSM::Document":                               SSM.Document
	"AWS::SSM::MaintenanceWindow":                      SSM.MaintenanceWindow
	"AWS::SSM::MaintenanceWindowTarget":                SSM.MaintenanceWindowTarget
	"AWS::SSM::ResourceDataSync":                       SSM.ResourceDataSync
	"AWS::SecretsManager::ResourcePolicy":              SecretsManager.ResourcePolicy
	"AWS::SecretsManager::RotationSchedule":            SecretsManager.RotationSchedule
	"AWS::SecretsManager::Secret":                      SecretsManager.Secret
	"AWS::SecretsManager::SecretTargetAttachment":      SecretsManager.SecretTargetAttachment
	"AWS::StepFunctions::Activity":                     StepFunctions.Activity
	"AWS::StepFunctions::StateMachine":                 StepFunctions.StateMachine
	"AWS::WAF::ByteMatchSet":                           WAF.ByteMatchSet
	"AWS::WAF::IPSet":                                  WAF.IPSet
	"AWS::WAF::Rule":                                   WAF.Rule
	"AWS::WAF::SizeConstraintSet":                      WAF.SizeConstraintSet
	"AWS::WAF::SqlInjectionMatchSet":                   WAF.SqlInjectionMatchSet
	"AWS::WAF::WebACL":                                 WAF.WebACL
	"AWS::WAF::XssMatchSet":                            WAF.XssMatchSet
	"AWS::WorkSpaces::Workspace":                       WorkSpaces.Workspace
}
