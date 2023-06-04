<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_list_approval_rule_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all approval rule templates in the specified AWS Region in your AWS account

### Description

Lists all approval rule templates in the specified AWS Region in your
AWS account. If an AWS Region is not specified, the AWS Region where you
are signed in is used.

### Usage

    codecommit_list_approval_rule_templates(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_list_approval_rule_templates_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_list_approval_rule_templates_:_maxResults">maxResults</code></td>
<td><p>A non-zero, non-negative integer used to limit the number of
returned results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      approvalRuleTemplateNames = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_approval_rule_templates(
      nextToken = "string",
      maxResults = 123
    )
