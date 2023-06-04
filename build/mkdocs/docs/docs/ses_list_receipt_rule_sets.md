<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_list_receipt_rule_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the receipt rule sets that exist under your AWS account in the current AWS Region

### Description

Lists the receipt rule sets that exist under your AWS account in the
current AWS Region. If there are additional receipt rule sets to be
retrieved, you will receive a `NextToken` that you can provide to the
next call to `list_receipt_rule_sets` to retrieve the additional
entries.

For information about managing receipt rule sets, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html).

You can execute this operation no more than once per second.

### Usage

    ses_list_receipt_rule_sets(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_list_receipt_rule_sets_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>list_receipt_rule_sets</code> to indicate the position in the
receipt rule set list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RuleSets = list(
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

    svc$list_receipt_rule_sets(
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # The following example lists the receipt rule sets that exist under an
    # AWS account:
    svc$list_receipt_rule_sets(
      NextToken = ""
    )

    ## End(Not run)
