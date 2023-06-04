<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_dissociate_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a package from the specified Amazon OpenSearch Service domain

### Description

Removes a package from the specified Amazon OpenSearch Service domain.
The package can't be in use with any OpenSearch index for the
dissociation to succeed. The package is still available in OpenSearch
Service for association later. For more information, see [Custom
packages for Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).

### Usage

    opensearchservice_dissociate_package(PackageID, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_dissociate_package_:_PackageID">PackageID</code></td>
<td><p>[required] Internal ID of the package to dissociate from the
domain. Use <code>list_packages_for_domain</code> to find this
value.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_dissociate_package_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the domain to dissociate the package
from.</p></td>
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
