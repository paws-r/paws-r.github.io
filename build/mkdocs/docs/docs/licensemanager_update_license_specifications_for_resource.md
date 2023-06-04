<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_update_license_specifications_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or removes the specified license configurations for the specified Amazon Web Services resource

### Description

Adds or removes the specified license configurations for the specified
Amazon Web Services resource.

You can update the license specifications of AMIs, instances, and hosts.
You cannot update the license specifications for launch templates and
CloudFormation templates, as they send license configurations to the
operation that creates the resource.

### Usage

    licensemanager_update_license_specifications_for_resource(ResourceArn,
      AddLicenseSpecifications, RemoveLicenseSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_update_license_specifications_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the Amazon Web Services
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_license_specifications_for_resource_:_AddLicenseSpecifications">AddLicenseSpecifications</code></td>
<td><p>ARNs of the license configurations to add.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_update_license_specifications_for_resource_:_RemoveLicenseSpecifications">RemoveLicenseSpecifications</code></td>
<td><p>ARNs of the license configurations to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_license_specifications_for_resource(
      ResourceArn = "string",
      AddLicenseSpecifications = list(
        list(
          LicenseConfigurationArn = "string",
          AmiAssociationScope = "string"
        )
      ),
      RemoveLicenseSpecifications = list(
        list(
          LicenseConfigurationArn = "string",
          AmiAssociationScope = "string"
        )
      )
    )
