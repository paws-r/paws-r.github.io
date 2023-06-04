<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_deregister_package_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters a package version

### Description

Deregisters a package version.

### Usage

    panorama_deregister_package_version(OwnerAccount, PackageId,
      PackageVersion, PatchVersion, UpdatedLatestPatchVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_deregister_package_version_:_OwnerAccount">OwnerAccount</code></td>
<td><p>An owner account.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_deregister_package_version_:_PackageId">PackageId</code></td>
<td><p>[required] A package ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_deregister_package_version_:_PackageVersion">PackageVersion</code></td>
<td><p>[required] A package version.</p></td>
</tr>
<tr class="even">
<td><code
id="panorama_deregister_package_version_:_PatchVersion">PatchVersion</code></td>
<td><p>[required] A patch version.</p></td>
</tr>
<tr class="odd">
<td><code
id="panorama_deregister_package_version_:_UpdatedLatestPatchVersion">UpdatedLatestPatchVersion</code></td>
<td><p>If the version was marked latest, the new version to maker as
latest.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_package_version(
      OwnerAccount = "string",
      PackageId = "string",
      PackageVersion = "string",
      PatchVersion = "string",
      UpdatedLatestPatchVersion = "string"
    )
