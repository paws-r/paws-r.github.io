<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_delete_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a domain

### Description

Deletes a domain. You cannot delete a domain that contains repositories.
If you want to delete a domain with repositories, first delete its
repositories.

### Usage

    codeartifact_delete_domain(domain, domainOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codeartifact_delete_domain_:_domain">domain</code></td>
<td><p>[required] The name of the domain to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_delete_domain_:_domainOwner">domainOwner</code></td>
<td><p>The 12-digit account number of the Amazon Web Services account
that owns the domain. It does not include dashes or spaces.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      domain = list(
        name = "string",
        owner = "string",
        arn = "string",
        status = "Active"|"Deleted",
        createdTime = as.POSIXct(
          "2015-01-01"
        ),
        encryptionKey = "string",
        repositoryCount = 123,
        assetSizeBytes = 123,
        s3BucketArn = "string"
      )
    )

### Request syntax

    svc$delete_domain(
      domain = "string",
      domainOwner = "string"
    )
