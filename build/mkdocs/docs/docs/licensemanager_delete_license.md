<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_delete_license</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified license

### Description

Deletes the specified license.

### Usage

    licensemanager_delete_license(LicenseArn, SourceVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_delete_license_:_LicenseArn">LicenseArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_delete_license_:_SourceVersion">SourceVersion</code></td>
<td><p>[required] Current version of the license.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "PENDING_DELETE"|"DELETED",
      DeletionDate = "string"
    )

### Request syntax

    svc$delete_license(
      LicenseArn = "string",
      SourceVersion = "string"
    )
