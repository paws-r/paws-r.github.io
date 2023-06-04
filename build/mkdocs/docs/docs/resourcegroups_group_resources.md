<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_group_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified resources to the specified group

### Description

Adds the specified resources to the specified group.

You can use this operation with only resource groups that are configured
with the following types:

-   `⁠AWS::EC2::HostManagement⁠`

-   `⁠AWS::EC2::CapacityReservationPool⁠`

Other resource group type and resource types aren't currently supported
by this operation.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:GroupResources`

### Usage

    resourcegroups_group_resources(Group, ResourceArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resourcegroups_group_resources_:_Group">Group</code></td>
<td><p>[required] The name or the ARN of the resource group to add
resources to.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroups_group_resources_:_ResourceArns">ResourceArns</code></td>
<td><p>[required] The list of ARNs of the resources to be added to the
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

    svc$group_resources(
      Group = "string",
      ResourceArns = list(
        "string"
      )
    )
