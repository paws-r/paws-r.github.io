<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_list_email_identities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all of the email identities that are associated with your Amazon Pinpoint account

### Description

Returns a list of all of the email identities that are associated with
your Amazon Pinpoint account. An identity can be either an email address
or a domain. This operation returns identities that are verified as well
as those that aren't.

### Usage

    pinpointemail_list_email_identities(NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_list_email_identities_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>list_email_identities</code> to indicate the position in the list
of identities.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_list_email_identities_:_PageSize">PageSize</code></td>
<td><p>The number of results to show in a single call to
<code>list_email_identities</code>. If the number of results is larger
than the number you specified in this parameter, then the response
includes a <code>NextToken</code> element, which you can use to obtain
additional results.</p>
<p>The value you specify has to be at least 0, and can be no more than
1000.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EmailIdentities = list(
        list(
          IdentityType = "EMAIL_ADDRESS"|"DOMAIN"|"MANAGED_DOMAIN",
          IdentityName = "string",
          SendingEnabled = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_email_identities(
      NextToken = "string",
      PageSize = 123
    )
