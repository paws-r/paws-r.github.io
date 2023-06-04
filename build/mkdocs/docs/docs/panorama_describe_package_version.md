<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_describe_package_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a package version

### Description

Returns information about a package version.

### Usage

    panorama_describe_package_version(OwnerAccount, PackageId,
      PackageVersion, PatchVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_describe_package_version_:_OwnerAccount">OwnerAccount</code></td>
<td><p>The version's owner account.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_describe_package_version_:_PackageId">PackageId</code></td>
<td><p>[required] The version's ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_describe_package_version_:_PackageVersion">PackageVersion</code></td>
<td><p>[required] The version's version.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_describe_package_version_:_PatchVersion">PatchVersion</code></td>
<td><p>The version's patch version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IsLatestPatch = TRUE|FALSE,
      OwnerAccount = "string",
      PackageArn = "string",
      PackageId = "string",
      PackageName = "string",
      PackageVersion = "string",
      PatchVersion = "string",
      RegisteredTime = as.POSIXct(
        "2015-01-01"
      ),
      Status = "REGISTER_PENDING"|"REGISTER_COMPLETED"|"FAILED"|"DELETING",
      StatusDescription = "string"
    )

### Request syntax

    svc$describe_package_version(
      OwnerAccount = "string",
      PackageId = "string",
      PackageVersion = "string",
      PatchVersion = "string"
    )
