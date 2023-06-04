<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_register_package_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a package version

### Description

Registers a package version.

### Usage

    panorama_register_package_version(MarkLatest, OwnerAccount, PackageId,
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
id="panorama_register_package_version_:_MarkLatest">MarkLatest</code></td>
<td><p>Whether to mark the new version as the latest version.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_register_package_version_:_OwnerAccount">OwnerAccount</code></td>
<td><p>An owner account.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_register_package_version_:_PackageId">PackageId</code></td>
<td><p>[required] A package ID.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_register_package_version_:_PackageVersion">PackageVersion</code></td>
<td><p>[required] A package version.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_register_package_version_:_PatchVersion">PatchVersion</code></td>
<td><p>[required] A patch version.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_package_version(
      MarkLatest = TRUE|FALSE,
      OwnerAccount = "string",
      PackageId = "string",
      PackageVersion = "string",
      PatchVersion = "string"
    )
