<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_verify_domain_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a domain to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it

### Description

Adds a domain to the list of identities for your Amazon SES account in
the current AWS Region and attempts to verify it. For more information
about verifying domains, see [Verifying Email Addresses and
Domains](https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html)
in the *Amazon SES Developer Guide.*

You can execute this operation no more than once per second.

### Usage

    ses_verify_domain_identity(Domain)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_verify_domain_identity_:_Domain">Domain</code></td>
<td><p>[required] The domain to be verified.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VerificationToken = "string"
    )

### Request syntax

    svc$verify_domain_identity(
      Domain = "string"
    )

### Examples

    ## Not run: 
    # The following example starts the domain verification process with Amazon
    # SES:
    svc$verify_domain_identity(
      Domain = "example.com"
    )

    ## End(Not run)
