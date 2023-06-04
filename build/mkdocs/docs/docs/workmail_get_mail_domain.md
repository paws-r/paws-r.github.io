<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_get_mail_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details for a mail domain, including domain records required to configure your domain with recommended security

### Description

Gets details for a mail domain, including domain records required to
configure your domain with recommended security.

### Usage

    workmail_get_mail_domain(OrganizationId, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_get_mail_domain_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization for which the domain is
retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_get_mail_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The domain from which you want to retrieve
details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Records = list(
        list(
          Type = "string",
          Hostname = "string",
          Value = "string"
        )
      ),
      IsTestDomain = TRUE|FALSE,
      IsDefault = TRUE|FALSE,
      OwnershipVerificationStatus = "PENDING"|"VERIFIED"|"FAILED",
      DkimVerificationStatus = "PENDING"|"VERIFIED"|"FAILED"
    )

### Request syntax

    svc$get_mail_domain(
      OrganizationId = "string",
      DomainName = "string"
    )
