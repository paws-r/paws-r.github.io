<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_list_group_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of ARNs of the resources that are members of a specified resource group

### Description

Returns a list of ARNs of the resources that are members of a specified
resource group.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:ListGroupResources`

-   `cloudformation:DescribeStacks`

-   `cloudformation:ListStackResources`

-   `tag:GetResources`

### Usage

    resourcegroups_list_group_resources(GroupName, Group, Filters,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_list_group_resources_:_GroupName">GroupName</code></td>
<td><p><em>Deprecated - don't use this parameter. Use the Group request
field instead.</em></p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroups_list_group_resources_:_Group">Group</code></td>
<td><p>The name or the ARN of the resource group</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroups_list_group_resources_:_Filters">Filters</code></td>
<td><p>Filters, formatted as ResourceFilter objects, that you want to
apply to a <code>list_group_resources</code> operation. Filters the
results to include only those of the specified resource types.</p>
<ul>
<li><p><code>resource-type</code> - Filter resources by their type.
Specify up to five resource types in the format <code
style="white-space: pre;">⁠AWS::ServiceCode::ResourceType⁠</code>. For
example, <code style="white-space: pre;">⁠AWS::EC2::Instance⁠</code>, or
<code style="white-space: pre;">⁠AWS::S3::Bucket⁠</code>.</p></li>
</ul>
<p>When you specify a <code>resource-type</code> filter for
<code>list_group_resources</code>, Resource Groups validates your filter
resource types against the types that are defined in the query
associated with the group. For example, if a group contains only S3
buckets because its query specifies only that resource type, but your
<code>resource-type</code> filter includes EC2 instances, AWS Resource
Groups does not filter for EC2 instances. In this case, a
<code>list_group_resources</code> request returns a
<code>BadRequestException</code> error with a message similar to the
following:</p>
<p><code
style="white-space: pre;">⁠The resource types specified as filters in the request are not valid.⁠</code></p>
<p>The error includes a list of resource types that failed the
validation because they are not part of the query associated with the
group. This validation doesn't occur when the group query specifies
<code>AWS::AllSupported</code>, because a group based on such a query
can contain any of the allowed resource types for the query type
(tag-based or Amazon CloudFront stack-based queries).</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroups_list_group_resources_:_MaxResults">MaxResults</code></td>
<td><p>The total number of results that you want included on each page
of the response. If you do not include this parameter, it defaults to a
value that is specific to the operation. If additional items exist
beyond the maximum you specify, the <code>NextToken</code> response
element is present and has a value (is not null). Include that value as
the <code>NextToken</code> request parameter in the next call to the
operation to get the next part of the results. Note that the service
might return fewer results than the maximum even when there are more
results available. You should check <code>NextToken</code> after every
operation to ensure that you receive all of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroups_list_group_resources_:_NextToken">NextToken</code></td>
<td><p>The parameter for receiving additional results if you receive a
<code>NextToken</code> response in a previous request. A
<code>NextToken</code> response indicates that more output is available.
Set this parameter to the value provided by a previous call's
<code>NextToken</code> response to indicate where the output should
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Resources = list(
        list(
          Identifier = list(
            ResourceArn = "string",
            ResourceType = "string"
          ),
          Status = list(
            Name = "PENDING"
          )
        )
      ),
      ResourceIdentifiers = list(
        list(
          ResourceArn = "string",
          ResourceType = "string"
        )
      ),
      NextToken = "string",
      QueryErrors = list(
        list(
          ErrorCode = "CLOUDFORMATION_STACK_INACTIVE"|"CLOUDFORMATION_STACK_NOT_EXISTING"|"CLOUDFORMATION_STACK_UNASSUMABLE_ROLE",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$list_group_resources(
      GroupName = "string",
      Group = "string",
      Filters = list(
        list(
          Name = "resource-type",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
