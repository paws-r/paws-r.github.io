<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_list_associated_approval_rule_templates_for_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all approval rule templates that are associated with a specified repository

### Description

Lists all approval rule templates that are associated with a specified
repository.

### Usage

    codecommit_list_associated_approval_rule_templates_for_repository(
      repositoryName, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_list_associated_approval_rule_templates_for_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository for which you want to list
all associated approval rule templates.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_list_associated_approval_rule_templates_for_repository_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_list_associated_approval_rule_templates_for_repository_:_maxResults">maxResults</code></td>
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

    svc$list_associated_approval_rule_templates_for_repository(
      repositoryName = "string",
      nextToken = "string",
      maxResults = 123
    )
