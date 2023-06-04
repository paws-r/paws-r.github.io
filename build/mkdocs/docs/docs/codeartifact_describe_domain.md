<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_describe_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a DomainDescription object that contains information about the requested domain

### Description

Returns a
[DomainDescription](https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html)
object that contains information about the requested domain.

### Usage

    codeartifact_describe_domain(domain, domainOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codeartifact_describe_domain_:_domain">domain</code></td>
<td><p>[required] A string that specifies the name of the requested
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_describe_domain_:_domainOwner">domainOwner</code></td>
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

    svc$describe_domain(
      domain = "string",
      domainOwner = "string"
    )
