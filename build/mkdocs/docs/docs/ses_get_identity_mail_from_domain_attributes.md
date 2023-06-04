<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_identity_mail_from_domain_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the custom MAIL FROM attributes for a list of identities (email addresses : domains)

### Description

Returns the custom MAIL FROM attributes for a list of identities (email
addresses : domains).

This operation is throttled at one request per second and can only get
custom MAIL FROM attributes for up to 100 identities at a time.

### Usage

    ses_get_identity_mail_from_domain_attributes(Identities)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_get_identity_mail_from_domain_attributes_:_Identities">Identities</code></td>
<td><p>[required] A list of one or more identities.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MailFromDomainAttributes = list(
        list(
          MailFromDomain = "string",
          MailFromDomainStatus = "Pending"|"Success"|"Failed"|"TemporaryFailure",
          BehaviorOnMXFailure = "UseDefaultValue"|"RejectMessage"
        )
      )
    )

### Request syntax

    svc$get_identity_mail_from_domain_attributes(
      Identities = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example returns the custom MAIL FROM attributes for an
    # identity:
    svc$get_identity_mail_from_domain_attributes(
      Identities = list(
        "example.com"
      )
    )

    ## End(Not run)
