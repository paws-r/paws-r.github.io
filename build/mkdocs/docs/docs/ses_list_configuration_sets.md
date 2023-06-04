<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_list_configuration_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of the configuration sets associated with your Amazon SES account in the current AWS Region

### Description

Provides a list of the configuration sets associated with your Amazon
SES account in the current AWS Region. For information about using
configuration sets, see [Monitoring Your Amazon SES Sending
Activity](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html)
in the *Amazon SES Developer Guide.*

You can execute this operation no more than once per second. This
operation will return up to 1,000 configuration sets each time it is
run. If your Amazon SES account has more than 1,000 configuration sets,
this operation will also return a NextToken element. You can then
execute the `list_configuration_sets` operation again, passing the
`NextToken` parameter and the value of the NextToken element to retrieve
additional results.

### Usage

    ses_list_configuration_sets(NextToken, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_list_configuration_sets_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>list_configuration_sets</code> to indicate the position of the
configuration set in the configuration set list.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_list_configuration_sets_:_MaxItems">MaxItems</code></td>
<td><p>The number of configuration sets to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSets = list(
        list(
          Name = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_configuration_sets(
      NextToken = "string",
      MaxItems = 123
    )
