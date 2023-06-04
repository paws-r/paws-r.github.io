<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoveryreadiness_create_resource_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a resource set

### Description

Creates a resource set. A resource set is a set of resources of one type
that span multiple cells. You can associate a resource set with a
readiness check to monitor the resources for failover readiness.

### Usage

    route53recoveryreadiness_create_resource_set(ResourceSetName,
      ResourceSetType, Resources, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoveryreadiness_create_resource_set_:_ResourceSetName">ResourceSetName</code></td>
<td><p>[required] The name of the resource set to create.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_create_resource_set_:_ResourceSetType">ResourceSetType</code></td>
<td><p>[required] The resource type of the resources in the resource
set. Enter one of the following values for resource type:</p>
<p>AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage,
AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm,
AWS::EC2::CustomerGateway, AWS::DynamoDB::Table, AWS::EC2::Volume,
AWS::ElasticLoadBalancing::LoadBalancer,
AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function,
AWS::MSK::Cluster, AWS::RDS::DBCluster, AWS::Route53::HealthCheck,
AWS::SQS::Queue, AWS::SNS::Topic, AWS::SNS::Subscription, AWS::EC2::VPC,
AWS::EC2::VPNConnection, AWS::EC2::VPNGateway,
AWS::Route53RecoveryReadiness::DNSTargetResource</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoveryreadiness_create_resource_set_:_Resources">Resources</code></td>
<td><p>[required] A list of resource objects in the resource
set.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoveryreadiness_create_resource_set_:_Tags">Tags</code></td>
<td><p>A tag to associate with the parameters for a resource
set.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceSetArn = "string",
      ResourceSetName = "string",
      ResourceSetType = "string",
      Resources = list(
        list(
          ComponentId = "string",
          DnsTargetResource = list(
            DomainName = "string",
            HostedZoneArn = "string",
            RecordSetId = "string",
            RecordType = "string",
            TargetResource = list(
              NLBResource = list(
                Arn = "string"
              ),
              R53Resource = list(
                DomainName = "string",
                RecordSetId = "string"
              )
            )
          ),
          ReadinessScopes = list(
            "string"
          ),
          ResourceArn = "string"
        )
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$create_resource_set(
      ResourceSetName = "string",
      ResourceSetType = "string",
      Resources = list(
        list(
          ComponentId = "string",
          DnsTargetResource = list(
            DomainName = "string",
            HostedZoneArn = "string",
            RecordSetId = "string",
            RecordType = "string",
            TargetResource = list(
              NLBResource = list(
                Arn = "string"
              ),
              R53Resource = list(
                DomainName = "string",
                RecordSetId = "string"
              )
            )
          ),
          ReadinessScopes = list(
            "string"
          ),
          ResourceArn = "string"
        )
      ),
      Tags = list(
        "string"
      )
    )
