<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_create_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new WorkMail organization

### Description

Creates a new WorkMail organization. Optionally, you can choose to
associate an existing AWS Directory Service directory with your
organization. If an AWS Directory Service directory ID is specified, the
organization alias must match the directory alias. If you choose not to
associate an existing directory with your organization, then we create a
new WorkMail directory for you. For more information, see [Adding an
organization](https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html)
in the *WorkMail Administrator Guide*.

You can associate multiple email domains with an organization, then
choose your default email domain from the WorkMail console. You can also
associate a domain that is managed in an Amazon Route 53 public hosted
zone. For more information, see [Adding a
domain](https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html)
and [Choosing the default
domain](https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html)
in the *WorkMail Administrator Guide*.

Optionally, you can use a customer managed key from AWS Key Management
Service (AWS KMS) to encrypt email for your organization. If you don't
associate an AWS KMS key, WorkMail creates a default, AWS managed key
for you.

### Usage

    workmail_create_organization(DirectoryId, Alias, ClientToken, Domains,
      KmsKeyArn, EnableInteroperability)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_create_organization_:_DirectoryId">DirectoryId</code></td>
<td><p>The AWS Directory Service directory ID.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_create_organization_:_Alias">Alias</code></td>
<td><p>[required] The organization alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_create_organization_:_ClientToken">ClientToken</code></td>
<td><p>The idempotency token associated with the request.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_create_organization_:_Domains">Domains</code></td>
<td><p>The email domains to associate with the organization.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_create_organization_:_KmsKeyArn">KmsKeyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a customer managed key from AWS
KMS.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_create_organization_:_EnableInteroperability">EnableInteroperability</code></td>
<td><p>When <code>true</code>, allows organization interoperability
between WorkMail and Microsoft Exchange. If <code>true</code>, you must
include a AD Connector directory ID in the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationId = "string"
    )

### Request syntax

    svc$create_organization(
      DirectoryId = "string",
      Alias = "string",
      ClientToken = "string",
      Domains = list(
        list(
          DomainName = "string",
          HostedZoneId = "string"
        )
      ),
      KmsKeyArn = "string",
      EnableInteroperability = TRUE|FALSE
    )
