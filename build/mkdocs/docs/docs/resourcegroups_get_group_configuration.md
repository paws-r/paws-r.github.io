<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_get_group_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the service configuration associated with the specified resource group

### Description

Retrieves the service configuration associated with the specified
resource group. For details about the service configuration syntax, see
[Service configurations for Resource
Groups](https://docs.aws.amazon.com/ARG/latest/userguide/about-slg.html).

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:GetGroupConfiguration`

### Usage

    resourcegroups_get_group_configuration(Group)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_get_group_configuration_:_Group">Group</code></td>
<td><p>The name or the ARN of the resource group for which you want to
retrive the service configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupConfiguration = list(
        Configuration = list(
          list(
            Type = "string",
            Parameters = list(
              list(
                Name = "string",
                Values = list(
                  "string"
                )
              )
            )
          )
        ),
        ProposedConfiguration = list(
          list(
            Type = "string",
            Parameters = list(
              list(
                Name = "string",
                Values = list(
                  "string"
                )
              )
            )
          )
        ),
        Status = "UPDATING"|"UPDATE_COMPLETE"|"UPDATE_FAILED",
        FailureReason = "string"
      )
    )

### Request syntax

    svc$get_group_configuration(
      Group = "string"
    )
