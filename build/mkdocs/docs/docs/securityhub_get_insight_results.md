<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_get_insight_results</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the results of the Security Hub insight specified by the insight ARN

### Description

Lists the results of the Security Hub insight specified by the insight
ARN.

### Usage

    securityhub_get_insight_results(InsightArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_get_insight_results_:_InsightArn">InsightArn</code></td>
<td><p>[required] The ARN of the insight for which to return
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InsightResults = list(
        InsightArn = "string",
        GroupByAttribute = "string",
        ResultValues = list(
          list(
            GroupByAttributeValue = "string",
            Count = 123
          )
        )
      )
    )

### Request syntax

    svc$get_insight_results(
      InsightArn = "string"
    )

### Examples

    ## Not run: 
    # The following example returns the results of the Security Hub insight
    # specified by the insight ARN.
    svc$get_insight_results(
      InsightArn = "arn:aws:securityhub:us-west-1:123456789012:insight/12345678..."
    )

    ## End(Not run)
