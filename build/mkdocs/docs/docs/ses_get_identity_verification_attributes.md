<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_identity_verification_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Given a list of identities (email addresses and/or domains), returns the verification status and (for domain identities) the verification token for each identity

### Description

Given a list of identities (email addresses and/or domains), returns the
verification status and (for domain identities) the verification token
for each identity.

The verification status of an email address is "Pending" until the email
address owner clicks the link within the verification email that Amazon
SES sent to that address. If the email address owner clicks the link
within 24 hours, the verification status of the email address changes to
"Success". If the link is not clicked within 24 hours, the verification
status changes to "Failed." In that case, if you still want to verify
the email address, you must restart the verification process from the
beginning.

For domain identities, the domain's verification status is "Pending" as
Amazon SES searches for the required TXT record in the DNS settings of
the domain. When Amazon SES detects the record, the domain's
verification status changes to "Success". If Amazon SES is unable to
detect the record within 72 hours, the domain's verification status
changes to "Failed." In that case, if you still want to verify the
domain, you must restart the verification process from the beginning.

This operation is throttled at one request per second and can only get
verification attributes for up to 100 identities at a time.

### Usage

    ses_get_identity_verification_attributes(Identities)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_get_identity_verification_attributes_:_Identities">Identities</code></td>
<td><p>[required] A list of identities.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VerificationAttributes = list(
        list(
          VerificationStatus = "Pending"|"Success"|"Failed"|"TemporaryFailure"|"NotStarted",
          VerificationToken = "string"
        )
      )
    )

### Request syntax

    svc$get_identity_verification_attributes(
      Identities = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example returns the verification status and the
    # verification token for a domain identity:
    svc$get_identity_verification_attributes(
      Identities = list(
        "example.com"
      )
    )

    ## End(Not run)
