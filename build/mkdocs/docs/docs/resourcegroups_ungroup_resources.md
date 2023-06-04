<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_ungroup_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified resources from the specified group

### Description

Removes the specified resources from the specified group. This operation
works only with static groups that you populated using the
`group_resources` operation. It doesn't work with any resource groups
that are automatically populated by tag-based or CloudFormation
stack-based queries.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:UngroupResources`

### Usage

    resourcegroups_ungroup_resources(Group, ResourceArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_ungroup_resources_:_Group">Group</code></td>
<td><p>[required] The name or the ARN of the resource group from which
to remove the resources.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroups_ungroup_resources_:_ResourceArns">ResourceArns</code></td>
<td><p>[required] The ARNs of the resources to be removed from the
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Succeeded = list(
        "string"
      ),
      Failed = list(
        list(
          ResourceArn = "string",
          ErrorMessage = "string",
          ErrorCode = "string"
        )
      ),
      Pending = list(
        list(
          ResourceArn = "string"
        )
      )
    )

### Request syntax

    svc$ungroup_resources(
      Group = "string",
      ResourceArns = list(
        "string"
      )
    )
