<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_organization_resource_collection_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides an overview of your system's health

### Description

Provides an overview of your system's health. If additional member
accounts are part of your organization, you can filter those accounts
using the `AccountIds` field.

### Usage

    devopsguru_describe_organization_resource_collection_health(
      OrganizationResourceCollectionType, AccountIds, OrganizationalUnitIds,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_describe_organization_resource_collection_health_:_OrganizationResourceCollectionType">OrganizationResourceCollectionType</code></td>
<td><p>[required] An Amazon Web Services resource collection type. This
type specifies how analyzed Amazon Web Services resources are defined.
The two types of Amazon Web Services resource collections supported are
Amazon Web Services CloudFormation stacks and Amazon Web Services
resources that contain the same Amazon Web Services tag. DevOps Guru can
be configured to analyze the Amazon Web Services resources that are
defined in the stacks or that are tagged using the same tag
<em>key</em>. You can specify up to 500 Amazon Web Services
CloudFormation stacks.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_describe_organization_resource_collection_health_:_AccountIds">AccountIds</code></td>
<td><p>The ID of the Amazon Web Services account.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_describe_organization_resource_collection_health_:_OrganizationalUnitIds">OrganizationalUnitIds</code></td>
<td><p>The ID of the organizational unit.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_describe_organization_resource_collection_health_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_describe_organization_resource_collection_health_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CloudFormation = list(
        list(
          StackName = "string",
          Insight = list(
            OpenProactiveInsights = 123,
            OpenReactiveInsights = 123,
            MeanTimeToRecoverInMilliseconds = 123
          ),
          AnalyzedResourceCount = 123
        )
      ),
      Service = list(
        list(
          ServiceName = "API_GATEWAY"|"APPLICATION_ELB"|"AUTO_SCALING_GROUP"|"CLOUD_FRONT"|"DYNAMO_DB"|"EC2"|"ECS"|"EKS"|"ELASTIC_BEANSTALK"|"ELASTI_CACHE"|"ELB"|"ES"|"KINESIS"|"LAMBDA"|"NAT_GATEWAY"|"NETWORK_ELB"|"RDS"|"REDSHIFT"|"ROUTE_53"|"S3"|"SAGE_MAKER"|"SNS"|"SQS"|"STEP_FUNCTIONS"|"SWF",
          Insight = list(
            OpenProactiveInsights = 123,
            OpenReactiveInsights = 123
          ),
          AnalyzedResourceCount = 123
        )
      ),
      Account = list(
        list(
          AccountId = "string",
          Insight = list(
            OpenProactiveInsights = 123,
            OpenReactiveInsights = 123
          )
        )
      ),
      NextToken = "string",
      Tags = list(
        list(
          AppBoundaryKey = "string",
          TagValue = "string",
          Insight = list(
            OpenProactiveInsights = 123,
            OpenReactiveInsights = 123,
            MeanTimeToRecoverInMilliseconds = 123
          ),
          AnalyzedResourceCount = 123
        )
      )
    )

### Request syntax

    svc$describe_organization_resource_collection_health(
      OrganizationResourceCollectionType = "AWS_CLOUD_FORMATION"|"AWS_SERVICE"|"AWS_ACCOUNT"|"AWS_TAGS",
      AccountIds = list(
        "string"
      ),
      OrganizationalUnitIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )
