<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_license_specifications_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the license configurations for the specified resource

### Description

Describes the license configurations for the specified resource.

### Usage

    licensemanager_list_license_specifications_for_resource(ResourceArn,
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
id="licensemanager_list_license_specifications_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of a resource that has an
associated license configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_license_specifications_for_resource_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_license_specifications_for_resource_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseSpecifications = list(
        list(
          LicenseConfigurationArn = "string",
          AmiAssociationScope = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_license_specifications_for_resource(
      ResourceArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
