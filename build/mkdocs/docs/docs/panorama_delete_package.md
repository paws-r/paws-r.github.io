<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_delete_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a package

### Description

Deletes a package.

To delete a package, you need permission to call `s3:DeleteObject` in
addition to permissions for the AWS Panorama API.

### Usage

    panorama_delete_package(ForceDelete, PackageId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_delete_package_:_ForceDelete">ForceDelete</code></td>
<td><p>Delete the package even if it has artifacts stored in its access
point. Deletes the package's artifacts from Amazon S3.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_delete_package_:_PackageId">PackageId</code></td>
<td><p>[required] The package's ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_package(
      ForceDelete = TRUE|FALSE,
      PackageId = "string"
    )
