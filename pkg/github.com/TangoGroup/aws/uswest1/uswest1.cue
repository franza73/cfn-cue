package uswest1

import "github.com/TangoGroup/aws/fn"

ResourceSpecificationVersion :: "9.1.0"
ResourceTypes :: [ASK.Skill, AmazonMQ.Broker, AmazonMQ.Configuration, AmazonMQ.ConfigurationAssociation, ApiGateway.Account, ApiGateway.ApiKey, ApiGateway.Authorizer, ApiGateway.BasePathMapping, ApiGateway.ClientCertificate, ApiGateway.Deployment, ApiGateway.DocumentationPart, ApiGateway.DocumentationVersion, ApiGateway.DomainName, ApiGateway.GatewayResponse, ApiGateway.Method, ApiGateway.Model, ApiGateway.RequestValidator, ApiGateway.Resource, ApiGateway.RestApi, ApiGateway.Stage, ApiGateway.UsagePlan, ApiGateway.UsagePlanKey, ApiGateway.VpcLink, ApiGatewayV2.Api, ApiGatewayV2.ApiMapping, ApiGatewayV2.Authorizer, ApiGatewayV2.Deployment, ApiGatewayV2.DomainName, ApiGatewayV2.Integration, ApiGatewayV2.IntegrationResponse, ApiGatewayV2.Model, ApiGatewayV2.Route, ApiGatewayV2.RouteResponse, ApiGatewayV2.Stage, AppMesh.Mesh, AppMesh.Route, AppMesh.VirtualNode, AppMesh.VirtualRouter, AppMesh.VirtualService, ApplicationAutoScaling.ScalableTarget, ApplicationAutoScaling.ScalingPolicy, Athena.NamedQuery, AutoScaling.AutoScalingGroup, AutoScaling.LaunchConfiguration, AutoScaling.LifecycleHook, AutoScaling.ScalingPolicy, AutoScaling.ScheduledAction, AutoScalingPlans.ScalingPlan, Backup.BackupPlan, Backup.BackupSelection, Backup.BackupVault, Batch.ComputeEnvironment, Batch.JobDefinition, Budgets.Budget, CDK.Metadata, CertificateManager.Certificate, CloudFormation.CustomResource, CloudFormation.Macro, CloudFormation.Stack, CloudFormation.WaitCondition, CloudFormation.WaitConditionHandle, CloudFront.CloudFrontOriginAccessIdentity, CloudFront.Distribution, CloudFront.StreamingDistribution, CloudTrail.Trail, CloudWatch.Alarm, CloudWatch.AnomalyDetector, CloudWatch.Dashboard, CloudWatch.InsightRule, CodeBuild.Project, CodeBuild.SourceCredential, CodeCommit.Repository, CodeDeploy.Application, CodeDeploy.DeploymentConfig, CodeDeploy.DeploymentGroup, CodePipeline.CustomActionType, CodePipeline.Pipeline, CodePipeline.Webhook, CodeStar.GitHubRepository, CodeStarNotifications.NotificationRule, Config.AggregationAuthorization, Config.ConfigRule, Config.ConfigurationAggregator, Config.ConfigurationRecorder, Config.DeliveryChannel, Config.OrganizationConfigRule, Config.RemediationConfiguration, DAX.Cluster, DAX.ParameterGroup, DAX.SubnetGroup, DLM.LifecyclePolicy, DMS.Certificate, DMS.Endpoint, DMS.EventSubscription, DMS.ReplicationInstance, DMS.ReplicationSubnetGroup, DMS.ReplicationTask, DirectoryService.MicrosoftAD, DirectoryService.SimpleAD, DynamoDB.Table, EC2.CapacityReservation, EC2.ClientVpnAuthorizationRule, EC2.ClientVpnEndpoint, EC2.ClientVpnRoute, EC2.ClientVpnTargetNetworkAssociation, EC2.CustomerGateway, EC2.DHCPOptions, EC2.EC2Fleet, EC2.EIP, EC2.EIPAssociation, EC2.EgressOnlyInternetGateway, EC2.FlowLog, EC2.Host, EC2.Instance, EC2.InternetGateway, EC2.LaunchTemplate, EC2.NatGateway, EC2.NetworkAcl, EC2.NetworkAclEntry, EC2.NetworkInterface, EC2.NetworkInterfaceAttachment, EC2.NetworkInterfacePermission, EC2.PlacementGroup, EC2.Route, EC2.RouteTable, EC2.SecurityGroup, EC2.SecurityGroupEgress, EC2.SecurityGroupIngress, EC2.SpotFleet, EC2.Subnet, EC2.SubnetCidrBlock, EC2.SubnetNetworkAclAssociation, EC2.SubnetRouteTableAssociation, EC2.TrafficMirrorFilter, EC2.TrafficMirrorFilterRule, EC2.TrafficMirrorSession, EC2.TrafficMirrorTarget, EC2.TransitGateway, EC2.TransitGatewayAttachment, EC2.TransitGatewayRoute, EC2.TransitGatewayRouteTable, EC2.TransitGatewayRouteTableAssociation, EC2.TransitGatewayRouteTablePropagation, EC2.VPC, EC2.VPCCidrBlock, EC2.VPCDHCPOptionsAssociation, EC2.VPCEndpoint, EC2.VPCEndpointService, EC2.VPCEndpointServicePermissions, EC2.VPCGatewayAttachment, EC2.VPCPeeringConnection, EC2.VPNConnection, EC2.VPNConnectionRoute, EC2.VPNGateway, EC2.VPNGatewayRoutePropagation, EC2.Volume, EC2.VolumeAttachment, ECR.Repository, ECS.Cluster, ECS.PrimaryTaskSet, ECS.Service, ECS.TaskDefinition, ECS.TaskSet, EFS.FileSystem, EFS.MountTarget, EKS.Cluster, EKS.Nodegroup, EMR.Cluster, EMR.InstanceFleetConfig, EMR.InstanceGroupConfig, EMR.SecurityConfiguration, EMR.Step, ElastiCache.CacheCluster, ElastiCache.ParameterGroup, ElastiCache.ReplicationGroup, ElastiCache.SecurityGroup, ElastiCache.SecurityGroupIngress, ElastiCache.SubnetGroup, ElasticBeanstalk.Application, ElasticBeanstalk.ApplicationVersion, ElasticBeanstalk.ConfigurationTemplate, ElasticBeanstalk.Environment, ElasticLoadBalancing.LoadBalancer, ElasticLoadBalancingV2.Listener, ElasticLoadBalancingV2.ListenerCertificate, ElasticLoadBalancingV2.ListenerRule, ElasticLoadBalancingV2.LoadBalancer, ElasticLoadBalancingV2.TargetGroup, Elasticsearch.Domain, Events.EventBus, Events.EventBusPolicy, Events.Rule, FSx.FileSystem, GameLift.Alias, GameLift.Build, GameLift.Fleet, GameLift.GameSessionQueue, GameLift.MatchmakingConfiguration, GameLift.MatchmakingRuleSet, GameLift.Script, Glue.Classifier, Glue.Crawler, Glue.DataCatalogEncryptionSettings, Glue.DevEndpoint, Glue.Job, Glue.SecurityConfiguration, Glue.Trigger, Glue.Workflow, GuardDuty.Detector, GuardDuty.Filter, GuardDuty.IPSet, GuardDuty.Master, GuardDuty.Member, GuardDuty.ThreatIntelSet, IAM.AccessKey, IAM.Group, IAM.InstanceProfile, IAM.ManagedPolicy, IAM.Policy, IAM.Role, IAM.ServiceLinkedRole, IAM.User, IAM.UserToGroupAddition, Inspector.AssessmentTarget, Inspector.AssessmentTemplate, Inspector.ResourceGroup, IoT.Certificate, IoT.Policy, IoT.PolicyPrincipalAttachment, IoT.Thing, IoT.ThingPrincipalAttachment, IoT.TopicRule, KMS.Alias, KMS.Key, Kinesis.Stream, Kinesis.StreamConsumer, KinesisFirehose.DeliveryStream, Lambda.Alias, Lambda.EventInvokeConfig, Lambda.EventSourceMapping, Lambda.Function, Lambda.LayerVersion, Lambda.LayerVersionPermission, Lambda.Permission, Lambda.Version, Logs.Destination, Logs.LogGroup, Logs.LogStream, Logs.MetricFilter, Logs.SubscriptionFilter, MSK.Cluster, MediaConvert.JobTemplate, MediaConvert.Preset, MediaConvert.Queue, OpsWorks.App, OpsWorks.ElasticLoadBalancerAttachment, OpsWorks.Instance, OpsWorks.Layer, OpsWorks.Stack, OpsWorks.UserProfile, OpsWorks.Volume, OpsWorksCM.Server, RAM.ResourceShare, RDS.DBCluster, RDS.DBClusterParameterGroup, RDS.DBInstance, RDS.DBParameterGroup, RDS.DBSecurityGroup, RDS.DBSecurityGroupIngress, RDS.DBSubnetGroup, RDS.EventSubscription, RDS.OptionGroup, Redshift.Cluster, Redshift.ClusterParameterGroup, Redshift.ClusterSecurityGroup, Redshift.ClusterSecurityGroupIngress, Redshift.ClusterSubnetGroup, Route53.HealthCheck, Route53.HostedZone, Route53.RecordSet, Route53.RecordSetGroup, Route53Resolver.ResolverEndpoint, Route53Resolver.ResolverRule, Route53Resolver.ResolverRuleAssociation, S3.Bucket, S3.BucketPolicy, SDB.Domain, SNS.Subscription, SNS.Topic, SNS.TopicPolicy, SQS.Queue, SQS.QueuePolicy, SSM.Association, SSM.Document, SSM.MaintenanceWindow, SSM.MaintenanceWindowTarget, SSM.MaintenanceWindowTask, SSM.Parameter, SSM.PatchBaseline, SSM.ResourceDataSync, SageMaker.CodeRepository, SageMaker.NotebookInstance, SecretsManager.ResourcePolicy, SecretsManager.RotationSchedule, SecretsManager.Secret, SecretsManager.SecretTargetAttachment, SecurityHub.Hub, ServiceCatalog.AcceptedPortfolioShare, ServiceCatalog.CloudFormationProduct, ServiceCatalog.CloudFormationProvisionedProduct, ServiceCatalog.LaunchNotificationConstraint, ServiceCatalog.LaunchRoleConstraint, ServiceCatalog.LaunchTemplateConstraint, ServiceCatalog.Portfolio, ServiceCatalog.PortfolioPrincipalAssociation, ServiceCatalog.PortfolioProductAssociation, ServiceCatalog.PortfolioShare, ServiceCatalog.StackSetConstraint, ServiceCatalog.TagOption, ServiceCatalog.TagOptionAssociation, ServiceDiscovery.HttpNamespace, ServiceDiscovery.Instance, ServiceDiscovery.PrivateDnsNamespace, ServiceDiscovery.PublicDnsNamespace, ServiceDiscovery.Service, StepFunctions.Activity, StepFunctions.StateMachine, Transfer.Server, Transfer.User, WAF.ByteMatchSet, WAF.IPSet, WAF.Rule, WAF.SizeConstraintSet, WAF.SqlInjectionMatchSet, WAF.WebACL, WAF.XssMatchSet, WAFRegional.ByteMatchSet, WAFRegional.GeoMatchSet, WAFRegional.IPSet, WAFRegional.RateBasedRule, WAFRegional.RegexPatternSet, WAFRegional.Rule, WAFRegional.SizeConstraintSet, WAFRegional.SqlInjectionMatchSet, WAFRegional.WebACL, WAFRegional.WebACLAssociation, WAFRegional.XssMatchSet, WAFv2.IPSet, WAFv2.RegexPatternSet, WAFv2.RuleGroup, WAFv2.WebACL]
Template :: {
	AWSTemplateFormatVersion?: "2010-09-09"
	Description?:              string
	Metadata?: [string]: _
	Mappings?: [string]: [string]: [=~"[a-zA-Z0-9]"]: string | [...string]
	Conditions?: [string]: fn.And | fn.Equals | fn.If | fn.Not | fn.Or
	Parameters?: [=~"[a-zA-Z0-9]"]: {
		Type:                   "AWS::EC2::AvailabilityZone::Name" | "AWS::EC2::Image::Id" | "AWS::EC2::Instance::Id" | "AWS::EC2::KeyPair::KeyName" | "AWS::EC2::SecurityGroup::GroupName" | "AWS::EC2::SecurityGroup::Id" | "AWS::EC2::Subnet::Id" | "AWS::EC2::VPC::Id" | "AWS::EC2::Volume::Id" | "AWS::Route53::HostedZone::Id" | "AWS::SSM::Parameter::Name" | "AWS::SSM::Parameter::Value<AWS::EC2::AvailabilityZone::Name>" | "AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Instance::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::KeyPair::KeyName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::GroupName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Subnet::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::VPC::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Volume::Id>" | "AWS::SSM::Parameter::Value<AWS::Route53::HostedZone::Id>" | "AWS::SSM::Parameter::Value<CommaDelimitedList>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::AvailabilityZone::Name>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Image::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Instance::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::KeyPair::KeyName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::GroupName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Subnet::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::VPC::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Volume::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::Route53::HostedZone::Id>>" | "AWS::SSM::Parameter::Value<List<String>>" | "AWS::SSM::Parameter::Value<String>" | "CommaDelimitedList" | "List<AWS::EC2::AvailabilityZone::Name>" | "List<AWS::EC2::Image::Id>" | "List<AWS::EC2::Instance::Id>" | "List<AWS::EC2::SecurityGroup::GroupName>" | "List<AWS::EC2::SecurityGroup::Id>" | "List<AWS::EC2::Subnet::Id>" | "List<AWS::EC2::VPC::Id>" | "List<AWS::EC2::Volume::Id>" | "List<AWS::Route53::HostedZone::Id>" | "List<Number>" | "Number" | "String"
		AllowedPattern?:        string
		AllowedValues?:         string
		ConstraintDescription?: string
		Default?:               string
		Description?:           string
		MaxLength?:             int
		MaxValue?:              int
		MinLength?:             int
		MinValue?:              int
		NoEcho?:                bool
	}
	Resources: [=~"[a-zA-Z0-9]"]: {
		Type: "AWS::AmazonMQ::Broker" | "AWS::AmazonMQ::Configuration" | "AWS::AmazonMQ::ConfigurationAssociation" | "AWS::ApiGateway::Account" | "AWS::ApiGateway::ApiKey" | "AWS::ApiGateway::Authorizer" | "AWS::ApiGateway::BasePathMapping" | "AWS::ApiGateway::ClientCertificate" | "AWS::ApiGateway::Deployment" | "AWS::ApiGateway::DocumentationPart" | "AWS::ApiGateway::DocumentationVersion" | "AWS::ApiGateway::DomainName" | "AWS::ApiGateway::GatewayResponse" | "AWS::ApiGateway::Method" | "AWS::ApiGateway::Model" | "AWS::ApiGateway::RequestValidator" | "AWS::ApiGateway::Resource" | "AWS::ApiGateway::RestApi" | "AWS::ApiGateway::Stage" | "AWS::ApiGateway::UsagePlan" | "AWS::ApiGateway::UsagePlanKey" | "AWS::ApiGateway::VpcLink" | "AWS::ApiGatewayV2::Api" | "AWS::ApiGatewayV2::ApiMapping" | "AWS::ApiGatewayV2::Authorizer" | "AWS::ApiGatewayV2::Deployment" | "AWS::ApiGatewayV2::DomainName" | "AWS::ApiGatewayV2::Integration" | "AWS::ApiGatewayV2::IntegrationResponse" | "AWS::ApiGatewayV2::Model" | "AWS::ApiGatewayV2::Route" | "AWS::ApiGatewayV2::RouteResponse" | "AWS::ApiGatewayV2::Stage" | "AWS::AppMesh::Mesh" | "AWS::AppMesh::Route" | "AWS::AppMesh::VirtualNode" | "AWS::AppMesh::VirtualRouter" | "AWS::AppMesh::VirtualService" | "AWS::ApplicationAutoScaling::ScalableTarget" | "AWS::ApplicationAutoScaling::ScalingPolicy" | "AWS::Athena::NamedQuery" | "AWS::AutoScaling::AutoScalingGroup" | "AWS::AutoScaling::LaunchConfiguration" | "AWS::AutoScaling::LifecycleHook" | "AWS::AutoScaling::ScalingPolicy" | "AWS::AutoScaling::ScheduledAction" | "AWS::AutoScalingPlans::ScalingPlan" | "AWS::Backup::BackupPlan" | "AWS::Backup::BackupSelection" | "AWS::Backup::BackupVault" | "AWS::Batch::ComputeEnvironment" | "AWS::Batch::JobDefinition" | "AWS::Budgets::Budget" | "AWS::CDK::Metadata" | "AWS::CertificateManager::Certificate" | "AWS::CloudFormation::CustomResource" | "AWS::CloudFormation::Macro" | "AWS::CloudFormation::Stack" | "AWS::CloudFormation::WaitCondition" | "AWS::CloudFormation::WaitConditionHandle" | "AWS::CloudFront::CloudFrontOriginAccessIdentity" | "AWS::CloudFront::Distribution" | "AWS::CloudFront::StreamingDistribution" | "AWS::CloudTrail::Trail" | "AWS::CloudWatch::Alarm" | "AWS::CloudWatch::AnomalyDetector" | "AWS::CloudWatch::Dashboard" | "AWS::CloudWatch::InsightRule" | "AWS::CodeBuild::Project" | "AWS::CodeBuild::SourceCredential" | "AWS::CodeCommit::Repository" | "AWS::CodeDeploy::Application" | "AWS::CodeDeploy::DeploymentConfig" | "AWS::CodeDeploy::DeploymentGroup" | "AWS::CodePipeline::CustomActionType" | "AWS::CodePipeline::Pipeline" | "AWS::CodePipeline::Webhook" | "AWS::CodeStar::GitHubRepository" | "AWS::CodeStarNotifications::NotificationRule" | "AWS::Config::AggregationAuthorization" | "AWS::Config::ConfigRule" | "AWS::Config::ConfigurationAggregator" | "AWS::Config::ConfigurationRecorder" | "AWS::Config::DeliveryChannel" | "AWS::Config::OrganizationConfigRule" | "AWS::Config::RemediationConfiguration" | "AWS::DAX::Cluster" | "AWS::DAX::ParameterGroup" | "AWS::DAX::SubnetGroup" | "AWS::DLM::LifecyclePolicy" | "AWS::DMS::Certificate" | "AWS::DMS::Endpoint" | "AWS::DMS::EventSubscription" | "AWS::DMS::ReplicationInstance" | "AWS::DMS::ReplicationSubnetGroup" | "AWS::DMS::ReplicationTask" | "AWS::DirectoryService::MicrosoftAD" | "AWS::DirectoryService::SimpleAD" | "AWS::DynamoDB::Table" | "AWS::EC2::CapacityReservation" | "AWS::EC2::ClientVpnAuthorizationRule" | "AWS::EC2::ClientVpnEndpoint" | "AWS::EC2::ClientVpnRoute" | "AWS::EC2::ClientVpnTargetNetworkAssociation" | "AWS::EC2::CustomerGateway" | "AWS::EC2::DHCPOptions" | "AWS::EC2::EC2Fleet" | "AWS::EC2::EIP" | "AWS::EC2::EIPAssociation" | "AWS::EC2::EgressOnlyInternetGateway" | "AWS::EC2::FlowLog" | "AWS::EC2::Host" | "AWS::EC2::Instance" | "AWS::EC2::InternetGateway" | "AWS::EC2::LaunchTemplate" | "AWS::EC2::NatGateway" | "AWS::EC2::NetworkAcl" | "AWS::EC2::NetworkAclEntry" | "AWS::EC2::NetworkInterface" | "AWS::EC2::NetworkInterfaceAttachment" | "AWS::EC2::NetworkInterfacePermission" | "AWS::EC2::PlacementGroup" | "AWS::EC2::Route" | "AWS::EC2::RouteTable" | "AWS::EC2::SecurityGroup" | "AWS::EC2::SecurityGroupEgress" | "AWS::EC2::SecurityGroupIngress" | "AWS::EC2::SpotFleet" | "AWS::EC2::Subnet" | "AWS::EC2::SubnetCidrBlock" | "AWS::EC2::SubnetNetworkAclAssociation" | "AWS::EC2::SubnetRouteTableAssociation" | "AWS::EC2::TrafficMirrorFilter" | "AWS::EC2::TrafficMirrorFilterRule" | "AWS::EC2::TrafficMirrorSession" | "AWS::EC2::TrafficMirrorTarget" | "AWS::EC2::TransitGateway" | "AWS::EC2::TransitGatewayAttachment" | "AWS::EC2::TransitGatewayRoute" | "AWS::EC2::TransitGatewayRouteTable" | "AWS::EC2::TransitGatewayRouteTableAssociation" | "AWS::EC2::TransitGatewayRouteTablePropagation" | "AWS::EC2::VPC" | "AWS::EC2::VPCCidrBlock" | "AWS::EC2::VPCDHCPOptionsAssociation" | "AWS::EC2::VPCEndpoint" | "AWS::EC2::VPCEndpointService" | "AWS::EC2::VPCEndpointServicePermissions" | "AWS::EC2::VPCGatewayAttachment" | "AWS::EC2::VPCPeeringConnection" | "AWS::EC2::VPNConnection" | "AWS::EC2::VPNConnectionRoute" | "AWS::EC2::VPNGateway" | "AWS::EC2::VPNGatewayRoutePropagation" | "AWS::EC2::Volume" | "AWS::EC2::VolumeAttachment" | "AWS::ECR::Repository" | "AWS::ECS::Cluster" | "AWS::ECS::PrimaryTaskSet" | "AWS::ECS::Service" | "AWS::ECS::TaskDefinition" | "AWS::ECS::TaskSet" | "AWS::EFS::FileSystem" | "AWS::EFS::MountTarget" | "AWS::EKS::Cluster" | "AWS::EKS::Nodegroup" | "AWS::EMR::Cluster" | "AWS::EMR::InstanceFleetConfig" | "AWS::EMR::InstanceGroupConfig" | "AWS::EMR::SecurityConfiguration" | "AWS::EMR::Step" | "AWS::ElastiCache::CacheCluster" | "AWS::ElastiCache::ParameterGroup" | "AWS::ElastiCache::ReplicationGroup" | "AWS::ElastiCache::SecurityGroup" | "AWS::ElastiCache::SecurityGroupIngress" | "AWS::ElastiCache::SubnetGroup" | "AWS::ElasticBeanstalk::Application" | "AWS::ElasticBeanstalk::ApplicationVersion" | "AWS::ElasticBeanstalk::ConfigurationTemplate" | "AWS::ElasticBeanstalk::Environment" | "AWS::ElasticLoadBalancing::LoadBalancer" | "AWS::ElasticLoadBalancingV2::Listener" | "AWS::ElasticLoadBalancingV2::ListenerCertificate" | "AWS::ElasticLoadBalancingV2::ListenerRule" | "AWS::ElasticLoadBalancingV2::LoadBalancer" | "AWS::ElasticLoadBalancingV2::TargetGroup" | "AWS::Elasticsearch::Domain" | "AWS::Events::EventBus" | "AWS::Events::EventBusPolicy" | "AWS::Events::Rule" | "AWS::FSx::FileSystem" | "AWS::GameLift::Alias" | "AWS::GameLift::Build" | "AWS::GameLift::Fleet" | "AWS::GameLift::GameSessionQueue" | "AWS::GameLift::MatchmakingConfiguration" | "AWS::GameLift::MatchmakingRuleSet" | "AWS::GameLift::Script" | "AWS::Glue::Classifier" | "AWS::Glue::Crawler" | "AWS::Glue::DataCatalogEncryptionSettings" | "AWS::Glue::DevEndpoint" | "AWS::Glue::Job" | "AWS::Glue::SecurityConfiguration" | "AWS::Glue::Trigger" | "AWS::Glue::Workflow" | "AWS::GuardDuty::Detector" | "AWS::GuardDuty::Filter" | "AWS::GuardDuty::IPSet" | "AWS::GuardDuty::Master" | "AWS::GuardDuty::Member" | "AWS::GuardDuty::ThreatIntelSet" | "AWS::IAM::AccessKey" | "AWS::IAM::Group" | "AWS::IAM::InstanceProfile" | "AWS::IAM::ManagedPolicy" | "AWS::IAM::Policy" | "AWS::IAM::Role" | "AWS::IAM::ServiceLinkedRole" | "AWS::IAM::User" | "AWS::IAM::UserToGroupAddition" | "AWS::Inspector::AssessmentTarget" | "AWS::Inspector::AssessmentTemplate" | "AWS::Inspector::ResourceGroup" | "AWS::IoT::Certificate" | "AWS::IoT::Policy" | "AWS::IoT::PolicyPrincipalAttachment" | "AWS::IoT::Thing" | "AWS::IoT::ThingPrincipalAttachment" | "AWS::IoT::TopicRule" | "AWS::KMS::Alias" | "AWS::KMS::Key" | "AWS::Kinesis::Stream" | "AWS::Kinesis::StreamConsumer" | "AWS::KinesisFirehose::DeliveryStream" | "AWS::Lambda::Alias" | "AWS::Lambda::EventInvokeConfig" | "AWS::Lambda::EventSourceMapping" | "AWS::Lambda::Function" | "AWS::Lambda::LayerVersion" | "AWS::Lambda::LayerVersionPermission" | "AWS::Lambda::Permission" | "AWS::Lambda::Version" | "AWS::Logs::Destination" | "AWS::Logs::LogGroup" | "AWS::Logs::LogStream" | "AWS::Logs::MetricFilter" | "AWS::Logs::SubscriptionFilter" | "AWS::MSK::Cluster" | "AWS::MediaConvert::JobTemplate" | "AWS::MediaConvert::Preset" | "AWS::MediaConvert::Queue" | "AWS::OpsWorks::App" | "AWS::OpsWorks::ElasticLoadBalancerAttachment" | "AWS::OpsWorks::Instance" | "AWS::OpsWorks::Layer" | "AWS::OpsWorks::Stack" | "AWS::OpsWorks::UserProfile" | "AWS::OpsWorks::Volume" | "AWS::OpsWorksCM::Server" | "AWS::RAM::ResourceShare" | "AWS::RDS::DBCluster" | "AWS::RDS::DBClusterParameterGroup" | "AWS::RDS::DBInstance" | "AWS::RDS::DBParameterGroup" | "AWS::RDS::DBSecurityGroup" | "AWS::RDS::DBSecurityGroupIngress" | "AWS::RDS::DBSubnetGroup" | "AWS::RDS::EventSubscription" | "AWS::RDS::OptionGroup" | "AWS::Redshift::Cluster" | "AWS::Redshift::ClusterParameterGroup" | "AWS::Redshift::ClusterSecurityGroup" | "AWS::Redshift::ClusterSecurityGroupIngress" | "AWS::Redshift::ClusterSubnetGroup" | "AWS::Route53::HealthCheck" | "AWS::Route53::HostedZone" | "AWS::Route53::RecordSet" | "AWS::Route53::RecordSetGroup" | "AWS::Route53Resolver::ResolverEndpoint" | "AWS::Route53Resolver::ResolverRule" | "AWS::Route53Resolver::ResolverRuleAssociation" | "AWS::S3::Bucket" | "AWS::S3::BucketPolicy" | "AWS::SDB::Domain" | "AWS::SNS::Subscription" | "AWS::SNS::Topic" | "AWS::SNS::TopicPolicy" | "AWS::SQS::Queue" | "AWS::SQS::QueuePolicy" | "AWS::SSM::Association" | "AWS::SSM::Document" | "AWS::SSM::MaintenanceWindow" | "AWS::SSM::MaintenanceWindowTarget" | "AWS::SSM::MaintenanceWindowTask" | "AWS::SSM::Parameter" | "AWS::SSM::PatchBaseline" | "AWS::SSM::ResourceDataSync" | "AWS::SageMaker::CodeRepository" | "AWS::SageMaker::NotebookInstance" | "AWS::SecretsManager::ResourcePolicy" | "AWS::SecretsManager::RotationSchedule" | "AWS::SecretsManager::Secret" | "AWS::SecretsManager::SecretTargetAttachment" | "AWS::SecurityHub::Hub" | "AWS::ServiceCatalog::AcceptedPortfolioShare" | "AWS::ServiceCatalog::CloudFormationProduct" | "AWS::ServiceCatalog::CloudFormationProvisionedProduct" | "AWS::ServiceCatalog::LaunchNotificationConstraint" | "AWS::ServiceCatalog::LaunchRoleConstraint" | "AWS::ServiceCatalog::LaunchTemplateConstraint" | "AWS::ServiceCatalog::Portfolio" | "AWS::ServiceCatalog::PortfolioPrincipalAssociation" | "AWS::ServiceCatalog::PortfolioProductAssociation" | "AWS::ServiceCatalog::PortfolioShare" | "AWS::ServiceCatalog::StackSetConstraint" | "AWS::ServiceCatalog::TagOption" | "AWS::ServiceCatalog::TagOptionAssociation" | "AWS::ServiceDiscovery::HttpNamespace" | "AWS::ServiceDiscovery::Instance" | "AWS::ServiceDiscovery::PrivateDnsNamespace" | "AWS::ServiceDiscovery::PublicDnsNamespace" | "AWS::ServiceDiscovery::Service" | "AWS::StepFunctions::Activity" | "AWS::StepFunctions::StateMachine" | "AWS::Transfer::Server" | "AWS::Transfer::User" | "AWS::WAF::ByteMatchSet" | "AWS::WAF::IPSet" | "AWS::WAF::Rule" | "AWS::WAF::SizeConstraintSet" | "AWS::WAF::SqlInjectionMatchSet" | "AWS::WAF::WebACL" | "AWS::WAF::XssMatchSet" | "AWS::WAFRegional::ByteMatchSet" | "AWS::WAFRegional::GeoMatchSet" | "AWS::WAFRegional::IPSet" | "AWS::WAFRegional::RateBasedRule" | "AWS::WAFRegional::RegexPatternSet" | "AWS::WAFRegional::Rule" | "AWS::WAFRegional::SizeConstraintSet" | "AWS::WAFRegional::SqlInjectionMatchSet" | "AWS::WAFRegional::WebACL" | "AWS::WAFRegional::WebACLAssociation" | "AWS::WAFRegional::XssMatchSet" | "AWS::WAFv2::IPSet" | "AWS::WAFv2::RegexPatternSet" | "AWS::WAFv2::RuleGroup" | "AWS::WAFv2::WebACL" | "Alexa::ASK::Skill"
		Properties: [string]: _
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain" | "Snapshot"
		UpdateReplacePolicy?: "Delete" | "Retain" | "Snapshot"
		Metadata?: [string]: _
	}
	for resourceName, resource in Resources {
		for cfnResource in ResourceTypes {
			if resource.Type == cfnResource.Type {
				Resources: "\(resourceName)": cfnResource
			}
		}
	}
	Outputs?: [=~"[a-zA-Z0-9]"]: {
		Description?: string
		Value:        _
		Export?: Name: _
	}
}
