<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_update_group_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the resource query of a group

### Description

Updates the resource query of a group. For more information about
resource queries, see [Create a tag-based group in Resource
Groups](https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:UpdateGroupQuery`

### Usage

    resourcegroups_update_group_query(GroupName, Group, ResourceQuery)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_update_group_query_:_GroupName">GroupName</code></td>
<td><p>Don't use this parameter. Use <code>Group</code>
instead.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroups_update_group_query_:_Group">Group</code></td>
<td><p>The name or the ARN of the resource group to query.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroups_update_group_query_:_ResourceQuery">ResourceQuery</code></td>
<td><p>[required] The resource query to determine which Amazon Web
Services resources are members of this resource group.</p>
<p>A resource group can contain either a <code>Configuration</code> or a
<code>ResourceQuery</code>, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupQuery = list(
        GroupName = "string",
        ResourceQuery = list(
          Type = "TAG_FILTERS_1_0"|"CLOUDFORMATION_STACK_1_0",
          Query = "string"
        )
      )
    )

### Request syntax

    svc$update_group_query(
      GroupName = "string",
      Group = "string",
      ResourceQuery = list(
        Type = "TAG_FILTERS_1_0"|"CLOUDFORMATION_STACK_1_0",
        Query = "string"
      )
    )
