<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_delete_insight</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the insight specified by the InsightArn

### Description

Deletes the insight specified by the `InsightArn`.

### Usage

    securityhub_delete_insight(InsightArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_delete_insight_:_InsightArn">InsightArn</code></td>
<td><p>[required] The ARN of the insight to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InsightArn = "string"
    )

### Request syntax

    svc$delete_insight(
      InsightArn = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a custom insight in Security Hub.
    svc$delete_insight(
      InsightArn = "arn:aws:securityhub:us-west-1:123456789012:insight/12345678..."
    )

    ## End(Not run)
