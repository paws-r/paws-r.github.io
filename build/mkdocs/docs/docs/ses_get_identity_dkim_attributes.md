<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_identity_dkim_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current status of Easy DKIM signing for an entity

### Description

Returns the current status of Easy DKIM signing for an entity. For
domain name identities, this operation also returns the DKIM tokens that
are required for Easy DKIM signing, and whether Amazon SES has
successfully verified that these tokens have been published.

This operation takes a list of identities as input and returns the
following information for each:

-   Whether Easy DKIM signing is enabled or disabled.

-   A set of DKIM tokens that represent the identity. If the identity is
    an email address, the tokens represent the domain of that address.

-   Whether Amazon SES has successfully verified the DKIM tokens
    published in the domain's DNS. This information is only returned for
    domain name identities, not for email addresses.

This operation is throttled at one request per second and can only get
DKIM attributes for up to 100 identities at a time.

For more information about creating DNS records using DKIM tokens, go to
the [Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html).

### Usage

    ses_get_identity_dkim_attributes(Identities)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_get_identity_dkim_attributes_:_Identities">Identities</code></td>
<td><p>[required] A list of one or more verified identities - email
addresses, domains, or both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DkimAttributes = list(
        list(
          DkimEnabled = TRUE|FALSE,
          DkimVerificationStatus = "Pending"|"Success"|"Failed"|"TemporaryFailure"|"NotStarted",
          DkimTokens = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$get_identity_dkim_attributes(
      Identities = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example retrieves the Amazon SES Easy DKIM attributes for
    # a list of identities:
    svc$get_identity_dkim_attributes(
      Identities = list(
        "example.com",
        "user@example.com"
      )
    )

    ## End(Not run)
