<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_discovered_resource_counts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the resource types, the number of each resource type, and the total number of resources that Config is recording in this region for your Amazon Web Services account

### Description

Returns the resource types, the number of each resource type, and the
total number of resources that Config is recording in this region for
your Amazon Web Services account.

**Example**

1.  Config is recording three resource types in the US East (Ohio)
    Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3
    buckets.

2.  You make a call to the `get_discovered_resource_counts` action and
    specify that you want all resource types.

3.  Config returns the following:

    -   The resource types (EC2 instances, IAM users, and S3 buckets).

    -   The number of each resource type (25, 20, and 15).

    -   The total number of all resources (60).

The response is paginated. By default, Config lists 100 ResourceCount
objects on each page. You can customize this number with the `limit`
parameter. The response includes a `nextToken` string. To get the next
page of results, run the request again and specify the string for the
`nextToken` parameter.

If you make a call to the `get_discovered_resource_counts` action, you
might not immediately receive resource counts in the following
situations:

-   You are a new Config customer.

-   You just enabled resource recording.

It might take a few minutes for Config to record and count your
resources. Wait a few minutes and then retry the
`get_discovered_resource_counts` action.

### Usage

    configservice_get_discovered_resource_counts(resourceTypes, limit,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_discovered_resource_counts_:_resourceTypes">resourceTypes</code></td>
<td><p>The comma-separated list that specifies the resource types that
you want Config to return (for example,
<code>"AWS::EC2::Instance"</code>, <code>"AWS::IAM::User"</code>).</p>
<p>If a value for <code>resourceTypes</code> is not specified, Config
returns all resource types that Config is recording in the region for
your account.</p>
<p>If the configuration recorder is turned off, Config returns an empty
list of ResourceCount objects. If the configuration recorder is not
recording a specific resource type (for example, S3 buckets), that
resource type is not returned in the list of ResourceCount
objects.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_discovered_resource_counts_:_limit">limit</code></td>
<td><p>The maximum number of ResourceCount objects returned on each
page. The default is 100. You cannot specify a number greater than 100.
If you specify 0, Config uses the default.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_discovered_resource_counts_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      totalDiscoveredResources = 123,
      resourceCounts = list(
        list(
          resourceType = "AWS::EC2::CustomerGateway"|"AWS::EC2::EIP"|"AWS::EC2::Host"|"AWS::EC2::Instance"|"AWS::EC2::InternetGateway"|"AWS::EC2::NetworkAcl"|"AWS::EC2::NetworkInterface"|"AWS::EC2::RouteTable"|"AWS::EC2::SecurityGroup"|"AWS::EC2::Subnet"|"AWS::CloudTrail::Trail"|"AWS::EC2::Volume"|"AWS::EC2::VPC"|"AWS::EC2::VPNConnection"|"AWS::EC2::VPNGateway"|"AWS::EC2::RegisteredHAInstance"|"AWS::EC2::NatGateway"|"AWS::EC2::EgressOnlyInternetGateway"|"AWS::EC2::VPCEndpoint"|"AWS::EC2::VPCEndpointService"|"AWS::EC2::FlowLog"|"AWS::EC2::VPCPeeringConnection"|"AWS::Elasticsearch::Domain"|"AWS::IAM::Group"|"AWS::IAM::Policy"|"AWS::IAM::Role"|"AWS::IAM::User"|"AWS::ElasticLoadBalancingV2::LoadBalancer"|"AWS::ACM::Certificate"|"AWS::RDS::DBInstance"|"AWS::RDS::DBSubnetGroup"|"AWS::RDS::DBSecurityGroup"|"AWS::RDS::DBSnapshot"|"AWS::RDS::DBCluster"|"AWS::RDS::DBClusterSnapshot"|"AWS::RDS::EventSubscription"|"AWS::S3::Bucket"|"AWS::S3::AccountPublicAccessBlock"|"AWS::Redshift::Cluster"|"AWS::Redshift::ClusterSnapshot"|"AWS::Redshift::ClusterParameterGroup"|"AWS::Redshift::ClusterSecurityGroup"|"AWS::Redshift::ClusterSubnetGroup"|"AWS::Redshift::EventSubscription"|"AWS::SSM::ManagedInstanceInventory"|"AWS::CloudWatch::Alarm"|"AWS::CloudFormation::Stack"|"AWS::ElasticLoadBalancing::LoadBalancer"|"AWS::AutoScaling::AutoScalingGroup"|"AWS::AutoScaling::LaunchConfiguration"|"AWS::AutoScaling::ScalingPolicy"|"AWS::AutoScaling::ScheduledAction"|"AWS::DynamoDB::Table"|"AWS::CodeBuild::Project"|"AWS::WAF::RateBasedRule"|"AWS::WAF::Rule"|"AWS::WAF::RuleGroup"|"AWS::WAF::WebACL"|"AWS::WAFRegional::RateBasedRule"|"AWS::WAFRegional::Rule"|"AWS::WAFRegional::RuleGroup"|"AWS::WAFRegional::WebACL"|"AWS::CloudFront::Distribution"|"AWS::CloudFront::StreamingDistribution"|"AWS::Lambda::Function"|"AWS::NetworkFirewall::Firewall"|"AWS::NetworkFirewall::FirewallPolicy"|"AWS::NetworkFirewall::RuleGroup"|"AWS::ElasticBeanstalk::Application"|"AWS::ElasticBeanstalk::ApplicationVersion"|"AWS::ElasticBeanstalk::Environment"|"AWS::WAFv2::WebACL"|"AWS::WAFv2::RuleGroup"|"AWS::WAFv2::IPSet"|"AWS::WAFv2::RegexPatternSet"|"AWS::WAFv2::ManagedRuleSet"|"AWS::XRay::EncryptionConfig"|"AWS::SSM::AssociationCompliance"|"AWS::SSM::PatchCompliance"|"AWS::Shield::Protection"|"AWS::ShieldRegional::Protection"|"AWS::Config::ConformancePackCompliance"|"AWS::Config::ResourceCompliance"|"AWS::ApiGateway::Stage"|"AWS::ApiGateway::RestApi"|"AWS::ApiGatewayV2::Stage"|"AWS::ApiGatewayV2::Api"|"AWS::CodePipeline::Pipeline"|"AWS::ServiceCatalog::CloudFormationProvisionedProduct"|"AWS::ServiceCatalog::CloudFormationProduct"|"AWS::ServiceCatalog::Portfolio"|"AWS::SQS::Queue"|"AWS::KMS::Key"|"AWS::QLDB::Ledger"|"AWS::SecretsManager::Secret"|"AWS::SNS::Topic"|"AWS::SSM::FileData"|"AWS::Backup::BackupPlan"|"AWS::Backup::BackupSelection"|"AWS::Backup::BackupVault"|"AWS::Backup::RecoveryPoint"|"AWS::ECR::Repository"|"AWS::ECS::Cluster"|"AWS::ECS::Service"|"AWS::ECS::TaskDefinition"|"AWS::EFS::AccessPoint"|"AWS::EFS::FileSystem"|"AWS::EKS::Cluster"|"AWS::OpenSearch::Domain"|"AWS::EC2::TransitGateway"|"AWS::Kinesis::Stream"|"AWS::Kinesis::StreamConsumer"|"AWS::CodeDeploy::Application"|"AWS::CodeDeploy::DeploymentConfig"|"AWS::CodeDeploy::DeploymentGroup"|"AWS::EC2::LaunchTemplate"|"AWS::ECR::PublicRepository"|"AWS::GuardDuty::Detector"|"AWS::EMR::SecurityConfiguration"|"AWS::SageMaker::CodeRepository"|"AWS::Route53Resolver::ResolverEndpoint"|"AWS::Route53Resolver::ResolverRule"|"AWS::Route53Resolver::ResolverRuleAssociation"|"AWS::DMS::ReplicationSubnetGroup"|"AWS::DMS::EventSubscription"|"AWS::MSK::Cluster"|"AWS::StepFunctions::Activity"|"AWS::WorkSpaces::Workspace"|"AWS::WorkSpaces::ConnectionAlias"|"AWS::SageMaker::Model"|"AWS::ElasticLoadBalancingV2::Listener"|"AWS::StepFunctions::StateMachine"|"AWS::Batch::JobQueue"|"AWS::Batch::ComputeEnvironment"|"AWS::AccessAnalyzer::Analyzer"|"AWS::Athena::WorkGroup"|"AWS::Athena::DataCatalog"|"AWS::Detective::Graph"|"AWS::GlobalAccelerator::Accelerator"|"AWS::GlobalAccelerator::EndpointGroup"|"AWS::GlobalAccelerator::Listener"|"AWS::EC2::TransitGatewayAttachment"|"AWS::EC2::TransitGatewayRouteTable"|"AWS::DMS::Certificate"|"AWS::AppConfig::Application"|"AWS::AppSync::GraphQLApi"|"AWS::DataSync::LocationSMB"|"AWS::DataSync::LocationFSxLustre"|"AWS::DataSync::LocationS3"|"AWS::DataSync::LocationEFS"|"AWS::DataSync::Task"|"AWS::DataSync::LocationNFS"|"AWS::EC2::NetworkInsightsAccessScopeAnalysis"|"AWS::EKS::FargateProfile"|"AWS::Glue::Job"|"AWS::GuardDuty::ThreatIntelSet"|"AWS::GuardDuty::IPSet"|"AWS::SageMaker::Workteam"|"AWS::SageMaker::NotebookInstanceLifecycleConfig"|"AWS::ServiceDiscovery::Service"|"AWS::ServiceDiscovery::PublicDnsNamespace"|"AWS::SES::ContactList"|"AWS::SES::ConfigurationSet"|"AWS::Route53::HostedZone"|"AWS::IoTEvents::Input"|"AWS::IoTEvents::DetectorModel"|"AWS::IoTEvents::AlarmModel"|"AWS::ServiceDiscovery::HttpNamespace"|"AWS::Events::EventBus"|"AWS::ImageBuilder::ContainerRecipe"|"AWS::ImageBuilder::DistributionConfiguration"|"AWS::ImageBuilder::InfrastructureConfiguration"|"AWS::DataSync::LocationObjectStorage"|"AWS::DataSync::LocationHDFS"|"AWS::Glue::Classifier"|"AWS::Route53RecoveryReadiness::Cell"|"AWS::Route53RecoveryReadiness::ReadinessCheck"|"AWS::ECR::RegistryPolicy"|"AWS::Backup::ReportPlan"|"AWS::Lightsail::Certificate"|"AWS::RUM::AppMonitor"|"AWS::Events::Endpoint"|"AWS::SES::ReceiptRuleSet"|"AWS::Events::Archive"|"AWS::Events::ApiDestination"|"AWS::Lightsail::Disk"|"AWS::FIS::ExperimentTemplate"|"AWS::DataSync::LocationFSxWindows"|"AWS::SES::ReceiptFilter"|"AWS::GuardDuty::Filter"|"AWS::SES::Template"|"AWS::AmazonMQ::Broker"|"AWS::AppConfig::Environment"|"AWS::AppConfig::ConfigurationProfile"|"AWS::Cloud9::EnvironmentEC2"|"AWS::EventSchemas::Registry"|"AWS::EventSchemas::RegistryPolicy"|"AWS::EventSchemas::Discoverer"|"AWS::FraudDetector::Label"|"AWS::FraudDetector::EntityType"|"AWS::FraudDetector::Variable"|"AWS::FraudDetector::Outcome"|"AWS::IoT::Authorizer"|"AWS::IoT::SecurityProfile"|"AWS::IoT::RoleAlias"|"AWS::IoT::Dimension"|"AWS::IoTAnalytics::Datastore"|"AWS::Lightsail::Bucket"|"AWS::Lightsail::StaticIp"|"AWS::MediaPackage::PackagingGroup"|"AWS::Route53RecoveryReadiness::RecoveryGroup"|"AWS::ResilienceHub::ResiliencyPolicy"|"AWS::Transfer::Workflow"|"AWS::EKS::IdentityProviderConfig"|"AWS::EKS::Addon"|"AWS::Glue::MLTransform"|"AWS::IoT::Policy"|"AWS::IoT::MitigationAction"|"AWS::IoTTwinMaker::Workspace"|"AWS::IoTTwinMaker::Entity"|"AWS::IoTAnalytics::Dataset"|"AWS::IoTAnalytics::Pipeline"|"AWS::IoTAnalytics::Channel"|"AWS::IoTSiteWise::Dashboard"|"AWS::IoTSiteWise::Project"|"AWS::IoTSiteWise::Portal"|"AWS::IoTSiteWise::AssetModel"|"AWS::IVS::Channel"|"AWS::IVS::RecordingConfiguration"|"AWS::IVS::PlaybackKeyPair"|"AWS::KinesisAnalyticsV2::Application"|"AWS::RDS::GlobalCluster"|"AWS::S3::MultiRegionAccessPoint"|"AWS::DeviceFarm::TestGridProject"|"AWS::Budgets::BudgetsAction"|"AWS::Lex::Bot"|"AWS::CodeGuruReviewer::RepositoryAssociation"|"AWS::IoT::CustomMetric"|"AWS::Route53Resolver::FirewallDomainList"|"AWS::RoboMaker::RobotApplicationVersion"|"AWS::EC2::TrafficMirrorSession"|"AWS::IoTSiteWise::Gateway"|"AWS::Lex::BotAlias"|"AWS::LookoutMetrics::Alert"|"AWS::IoT::AccountAuditConfiguration"|"AWS::EC2::TrafficMirrorTarget"|"AWS::S3::StorageLens"|"AWS::IoT::ScheduledAudit"|"AWS::Events::Connection"|"AWS::EventSchemas::Schema"|"AWS::MediaPackage::PackagingConfiguration"|"AWS::KinesisVideo::SignalingChannel"|"AWS::AppStream::DirectoryConfig"|"AWS::LookoutVision::Project"|"AWS::Route53RecoveryControl::Cluster"|"AWS::Route53RecoveryControl::SafetyRule"|"AWS::Route53RecoveryControl::ControlPanel"|"AWS::Route53RecoveryControl::RoutingControl"|"AWS::Route53RecoveryReadiness::ResourceSet"|"AWS::RoboMaker::SimulationApplication"|"AWS::RoboMaker::RobotApplication"|"AWS::HealthLake::FHIRDatastore"|"AWS::Pinpoint::Segment"|"AWS::Pinpoint::ApplicationSettings"|"AWS::Events::Rule"|"AWS::EC2::DHCPOptions"|"AWS::EC2::NetworkInsightsPath"|"AWS::EC2::TrafficMirrorFilter"|"AWS::EC2::IPAM"|"AWS::IoTTwinMaker::Scene"|"AWS::NetworkManager::TransitGatewayRegistration"|"AWS::CustomerProfiles::Domain"|"AWS::AutoScaling::WarmPool"|"AWS::Connect::PhoneNumber"|"AWS::AppConfig::DeploymentStrategy"|"AWS::AppFlow::Flow"|"AWS::AuditManager::Assessment"|"AWS::CloudWatch::MetricStream"|"AWS::DeviceFarm::InstanceProfile"|"AWS::DeviceFarm::Project"|"AWS::EC2::EC2Fleet"|"AWS::EC2::SubnetRouteTableAssociation"|"AWS::ECR::PullThroughCacheRule"|"AWS::GroundStation::Config"|"AWS::ImageBuilder::ImagePipeline"|"AWS::IoT::FleetMetric"|"AWS::IoTWireless::ServiceProfile"|"AWS::NetworkManager::Device"|"AWS::NetworkManager::GlobalNetwork"|"AWS::NetworkManager::Link"|"AWS::NetworkManager::Site"|"AWS::Panorama::Package"|"AWS::Pinpoint::App"|"AWS::Redshift::ScheduledAction"|"AWS::Route53Resolver::FirewallRuleGroupAssociation"|"AWS::SageMaker::AppImageConfig"|"AWS::SageMaker::Image",
          count = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_discovered_resource_counts(
      resourceTypes = list(
        "string"
      ),
      limit = 123,
      nextToken = "string"
    )
