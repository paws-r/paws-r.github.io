<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_update_domain_nameservers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation replaces the current set of name servers for the domain with the specified set of name servers

### Description

This operation replaces the current set of name servers for the domain
with the specified set of name servers. If you use Amazon Route 53 as
your DNS service, specify the four name servers in the delegation set
for the hosted zone for the domain.

If successful, this operation returns an operation ID that you can use
to track the progress and completion of the action. If the request is
not completed successfully, the domain registrant will be notified by
email.

### Usage

    route53domains_update_domain_nameservers(DomainName, FIAuthKey,
      Nameservers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_update_domain_nameservers_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to change name
servers for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_update_domain_nameservers_:_FIAuthKey">FIAuthKey</code></td>
<td><p>The authorization key for .fi domains</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_update_domain_nameservers_:_Nameservers">Nameservers</code></td>
<td><p>[required] A list of new name servers for the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$update_domain_nameservers(
      DomainName = "string",
      FIAuthKey = "string",
      Nameservers = list(
        list(
          Name = "string",
          GlueIps = list(
            "string"
          )
        )
      )
    )
