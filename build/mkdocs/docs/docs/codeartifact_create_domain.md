<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_create_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a domain

### Description

Creates a domain. CodeArtifact *domains* make it easier to manage
multiple repositories across an organization. You can use a domain to
apply permissions across many repositories owned by different Amazon Web
Services accounts. An asset is stored only once in a domain, even if
it's in multiple repositories.

Although you can have multiple domains, we recommend a single production
domain that contains all published artifacts so that your development
teams can find and share packages. You can use a second pre-production
domain to test changes to the production domain configuration.

### Usage

    codeartifact_create_domain(domain, encryptionKey, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codeartifact_create_domain_:_domain">domain</code></td>
<td><p>[required] The name of the domain to create. All domain names in
an Amazon Web Services Region that are in the same Amazon Web Services
account must be unique. The domain name is used as the prefix in DNS
hostnames. Do not use sensitive information in a domain name because it
is publicly discoverable.</p></td>
</tr>
<tr class="even">
<td><code
id="codeartifact_create_domain_:_encryptionKey">encryptionKey</code></td>
<td><p>The encryption key for the domain. This is used to encrypt
content stored in a domain. An encryption key can be a key ID, a key
Amazon Resource Name (ARN), a key alias, or a key alias ARN. To specify
an <code>encryptionKey</code>, your IAM role must have
<code>kms:DescribeKey</code> and <code>kms:CreateGrant</code>
permissions on the encryption key that is used. For more information,
see <a
href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax">DescribeKey</a>
in the <em>Key Management Service API Reference</em> and <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">Key
Management Service API Permissions Reference</a> in the <em>Key
Management Service Developer Guide</em>.</p>
<p>CodeArtifact supports only symmetric CMKs. Do not associate an
asymmetric CMK with your domain. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using
symmetric and asymmetric keys</a> in the <em>Key Management Service
Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="codeartifact_create_domain_:_tags">tags</code></td>
<td><p>One or more tag key-value pairs for the domain.</p></td>
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

    svc$create_domain(
      domain = "string",
      encryptionKey = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
