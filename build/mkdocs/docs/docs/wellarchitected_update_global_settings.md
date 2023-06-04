<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_update_global_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates whether the Amazon Web Services account is opted into organization sharing and discovery integration features

### Description

Updates whether the Amazon Web Services account is opted into
organization sharing and discovery integration features.

### Usage

    wellarchitected_update_global_settings(OrganizationSharingStatus,
      DiscoveryIntegrationStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_update_global_settings_:_OrganizationSharingStatus">OrganizationSharingStatus</code></td>
<td><p>The status of organization sharing settings.</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_update_global_settings_:_DiscoveryIntegrationStatus">DiscoveryIntegrationStatus</code></td>
<td><p>The status of discovery support settings.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_global_settings(
      OrganizationSharingStatus = "ENABLED"|"DISABLED",
      DiscoveryIntegrationStatus = "ENABLED"|"DISABLED"
    )
