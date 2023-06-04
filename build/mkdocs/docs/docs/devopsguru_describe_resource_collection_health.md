<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_resource_collection_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the number of open proactive insights, open reactive insights, and the Mean Time to Recover (MTTR) for all closed insights in resource collections in your account

### Description

Returns the number of open proactive insights, open reactive insights,
and the Mean Time to Recover (MTTR) for all closed insights in resource
collections in your account. You specify the type of Amazon Web Services
resources collection. The two types of Amazon Web Services resource
collections supported are Amazon Web Services CloudFormation stacks and
Amazon Web Services resources that contain the same Amazon Web Services
tag. DevOps Guru can be configured to analyze the Amazon Web Services
resources that are defined in the stacks or that are tagged using the
same tag *key*. You can specify up to 500 Amazon Web Services
CloudFormation stacks.

### Usage

    devopsguru_describe_resource_collection_health(ResourceCollectionType,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_describe_resource_collection_health_:_ResourceCollectionType">ResourceCollectionType</code></td>
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
id="devopsguru_describe_resource_collection_health_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
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

    svc$describe_resource_collection_health(
      ResourceCollectionType = "AWS_CLOUD_FORMATION"|"AWS_SERVICE"|"AWS_TAGS",
      NextToken = "string"
    )
