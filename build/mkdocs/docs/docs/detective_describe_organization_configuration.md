<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_describe_organization_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the configuration for the organization behavior graph

### Description

Returns information about the configuration for the organization
behavior graph. Currently indicates whether to automatically enable new
organization accounts as member accounts.

Can only be called by the Detective administrator account for the
organization.

### Usage

    detective_describe_organization_configuration(GraphArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_describe_organization_configuration_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the organization behavior graph.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoEnable = TRUE|FALSE
    )

### Request syntax

    svc$describe_organization_configuration(
      GraphArn = "string"
    )
