<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_update_domain_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates domain metadata, such as DisplayName

### Description

Updates domain metadata, such as DisplayName.

### Usage

    worklink_update_domain_metadata(FleetArn, DomainName, DisplayName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_update_domain_metadata_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_update_domain_metadata_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_update_domain_metadata_:_DisplayName">DisplayName</code></td>
<td><p>The name to display.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_domain_metadata(
      FleetArn = "string",
      DomainName = "string",
      DisplayName = "string"
    )
