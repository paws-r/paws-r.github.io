<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_list_repositories_for_approval_rule_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all repositories associated with the specified approval rule template

### Description

Lists all repositories associated with the specified approval rule
template.

### Usage

    codecommit_list_repositories_for_approval_rule_template(
      approvalRuleTemplateName, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_list_repositories_for_approval_rule_template_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name of the approval rule template for which you
want to list repositories that are associated with that
template.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_list_repositories_for_approval_rule_template_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_list_repositories_for_approval_rule_template_:_maxResults">maxResults</code></td>
<td><p>A non-zero, non-negative integer used to limit the number of
returned results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repositoryNames = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_repositories_for_approval_rule_template(
      approvalRuleTemplateName = "string",
      nextToken = "string",
      maxResults = 123
    )
