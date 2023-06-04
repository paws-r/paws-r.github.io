<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_create_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a package and storage location in an Amazon S3 access point

### Description

Creates a package and storage location in an Amazon S3 access point.

### Usage

    panorama_create_package(PackageName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_create_package_:_PackageName">PackageName</code></td>
<td><p>[required] A name for the package.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_create_package_:_Tags">Tags</code></td>
<td><p>Tags for the package.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      PackageId = "string",
      StorageLocation = list(
        BinaryPrefixLocation = "string",
        Bucket = "string",
        GeneratedPrefixLocation = "string",
        ManifestPrefixLocation = "string",
        RepoPrefixLocation = "string"
      )
    )

### Request syntax

    svc$create_package(
      PackageName = "string",
      Tags = list(
        "string"
      )
    )
