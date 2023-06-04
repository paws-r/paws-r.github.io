<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_list_configuration_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all of the configuration sets associated with your Amazon Pinpoint account in the current region

### Description

List all of the configuration sets associated with your Amazon Pinpoint
account in the current region.

In Amazon Pinpoint, *configuration sets* are groups of rules that you
can apply to the emails you send. You apply a configuration set to an
email by including a reference to the configuration set in the headers
of the email. When you apply a configuration set to an email, all of the
rules in that configuration set are applied to the email.

### Usage

    pinpointemail_list_configuration_sets(NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_list_configuration_sets_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>list_configuration_sets</code> to indicate the position in the
list of configuration sets.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_list_configuration_sets_:_PageSize">PageSize</code></td>
<td><p>The number of results to show in a single call to
<code>list_configuration_sets</code>. If the number of results is larger
than the number you specified in this parameter, then the response
includes a <code>NextToken</code> element, which you can use to obtain
additional results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSets = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_configuration_sets(
      NextToken = "string",
      PageSize = 123
    )
