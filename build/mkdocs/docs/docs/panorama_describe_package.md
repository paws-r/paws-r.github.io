<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_describe_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a package

### Description

Returns information about a package.

### Usage

    panorama_describe_package(PackageId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_describe_package_:_PackageId">PackageId</code></td>
<td><p>[required] The package's ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      PackageId = "string",
      PackageName = "string",
      ReadAccessPrincipalArns = list(
        "string"
      ),
      StorageLocation = list(
        BinaryPrefixLocation = "string",
        Bucket = "string",
        GeneratedPrefixLocation = "string",
        ManifestPrefixLocation = "string",
        RepoPrefixLocation = "string"
      ),
      Tags = list(
        "string"
      ),
      WriteAccessPrincipalArns = list(
        "string"
      )
    )

### Request syntax

    svc$describe_package(
      PackageId = "string"
    )
