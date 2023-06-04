<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_dissociate_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Dissociates a package from the Amazon ES domain

### Description

Dissociates a package from the Amazon ES domain.

### Usage

    elasticsearchservice_dissociate_package(PackageID, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_dissociate_package_:_PackageID">PackageID</code></td>
<td><p>[required] Internal ID of the package that you want to associate
with a domain. Use <code>describe_packages</code> to find this
value.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_dissociate_package_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the domain that you want to associate the
package with.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainPackageDetails = list(
        PackageID = "string",
        PackageName = "string",
        PackageType = "TXT-DICTIONARY",
        LastUpdated = as.POSIXct(
          "2015-01-01"
        ),
        DomainName = "string",
        DomainPackageStatus = "ASSOCIATING"|"ASSOCIATION_FAILED"|"ACTIVE"|"DISSOCIATING"|"DISSOCIATION_FAILED",
        PackageVersion = "string",
        ReferencePath = "string",
        ErrorDetails = list(
          ErrorType = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$dissociate_package(
      PackageID = "string",
      DomainName = "string"
    )
