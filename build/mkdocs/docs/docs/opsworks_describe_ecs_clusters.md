<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_ecs_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes Amazon ECS clusters that are registered with a stack

### Description

Describes Amazon ECS clusters that are registered with a stack. If you
specify only a stack ID, you can use the `MaxResults` and `NextToken`
parameters to paginate the response. However, AWS OpsWorks Stacks
currently supports only one cluster per layer, so the result set has a
maximum of one element.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack or an attached
policy that explicitly grants permission. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

This call accepts only one resource-identifying parameter.

### Usage

    opsworks_describe_ecs_clusters(EcsClusterArns, StackId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_ecs_clusters_:_EcsClusterArns">EcsClusterArns</code></td>
<td><p>A list of ARNs, one for each cluster to be described.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_ecs_clusters_:_StackId">StackId</code></td>
<td><p>A stack ID. <code>describe_ecs_clusters</code> returns a
description of the cluster that is registered with the stack.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_describe_ecs_clusters_:_NextToken">NextToken</code></td>
<td><p>If the previous paginated request did not return all of the
remaining results, the response object's<code>NextToken</code> parameter
value is set to a token. To retrieve the next set of results, call
<code>describe_ecs_clusters</code> again and assign that token to the
request object's <code>NextToken</code> parameter. If there are no
remaining results, the previous response object's <code>NextToken</code>
parameter is set to <code>null</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_ecs_clusters_:_MaxResults">MaxResults</code></td>
<td><p>To receive a paginated response, use this parameter to specify
the maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a <code>NextToken</code> value that you can assign to the
<code>NextToken</code> request parameter to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EcsClusters = list(
        list(
          EcsClusterArn = "string",
          EcsClusterName = "string",
          StackId = "string",
          RegisteredAt = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_ecs_clusters(
      EcsClusterArns = list(
        "string"
      ),
      StackId = "string",
      NextToken = "string",
      MaxResults = 123
    )
