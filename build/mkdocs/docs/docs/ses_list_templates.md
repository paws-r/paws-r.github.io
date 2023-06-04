<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_list_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the email templates present in your Amazon SES account in the current AWS Region

### Description

Lists the email templates present in your Amazon SES account in the
current AWS Region.

You can execute this operation no more than once per second.

### Usage

    ses_list_templates(NextToken, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_list_templates_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>list_templates</code> to indicate the position in the list of
email templates.</p></td>
</tr>
<tr class="even">
<td><code id="ses_list_templates_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of templates to return. This value must be at
least 1 and less than or equal to 10. If you do not specify a value, or
if you specify a value less than 1 or greater than 10, the operation
will return up to 10 results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplatesMetadata = list(
        list(
          Name = "string",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_templates(
      NextToken = "string",
      MaxItems = 123
    )
