<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_update_org_ec_2_deep_inspection_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Amazon Inspector deep inspection custom paths for your organization

### Description

Updates the Amazon Inspector deep inspection custom paths for your
organization. You must be an Amazon Inspector delegated administrator to
use this API.

### Usage

    inspector2_update_org_ec_2_deep_inspection_configuration(
      orgPackagePaths)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_update_org_ec_2_deep_inspection_configuration_:_orgPackagePaths">orgPackagePaths</code></td>
<td><p>[required] The Amazon Inspector deep inspection custom paths you
are adding for your organization.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_org_ec_2_deep_inspection_configuration(
      orgPackagePaths = list(
        "string"
      )
    )
